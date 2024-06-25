import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:practice_namito/core/app_manager.dart';
import 'package:practice_namito/features/data/model/token.dart';
import 'package:practice_namito/features/presentation/pages/code_verification/code_verification_screen.dart';

class AuthService {
  static const String baseUrl = 'https://namito.tatadev.pro/api/users';

  static Future<Map<String, dynamic>?> postRequest(
      String endpoint, Map<String, dynamic> body) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        if (kDebugMode) {
          print('Failed request. Status code: ${response.statusCode}');
        }
        if (kDebugMode) {
          print('Response body: ${response.body}');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error: $e');
      }
      return null;
    }
  }
}

class LoginRepo {
  static Future<void> sendPhoneNumber(
      BuildContext context, String phoneNumber) async {
    if (!phoneNumber.startsWith('+996')) {
      phoneNumber = '+996$phoneNumber';
    }

    final response =
        await AuthService.postRequest('/login/', {'phone_number': phoneNumber});

    if (response != null) {
      final smsCode = response['code'];
      if (kDebugMode) {
        print('SMS Code: $smsCode');
      }
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CodeVerificationScreen(
            phoneNumber: phoneNumber,
            smsCode: smsCode,
          ),
        ),
      );
    }
  }

  static Future<TokenModel?> verifyCode(String code) async {
    final response =
        await AuthService.postRequest('/verify-code/', {'code': code});

    if (response != null) {
      final tokenModel = TokenModel.fromJson(response);
      if (kDebugMode) {
        print('Аксесс токен: ${tokenModel.accessToken}');
      }
      if (kDebugMode) {
        print('Рефреш токен: ${tokenModel.refreshToken}');
      }

      if (tokenModel.accessToken != null && tokenModel.refreshToken != null) {
        await AppManager.instance.setToken(
          accessToken: tokenModel.accessToken!,
          refreshToken: tokenModel.refreshToken!,
        );
        return tokenModel;
      } else {
        if (kDebugMode) {
          print('Token not found in response.');
        }
      }
    }
    return null;
  }
}
