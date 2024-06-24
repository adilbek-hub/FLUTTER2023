import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  LoginScreen({super.key});

  Future<void> sendPhoneNumber(BuildContext context, String phoneNumber) async {
    final url = Uri.parse('https://namito.tatadev.pro/api/users/login/');
    final headers = {'Content-Type': 'application/json'};

    if (!phoneNumber.startsWith('+996')) {
      phoneNumber = '+996$phoneNumber';
    }
    final body = jsonEncode({'phone_number': phoneNumber});

    try {
      var response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 301 || response.statusCode == 302) {
        final redirectedUrl = response.headers['location'];
        if (redirectedUrl != null) {
          response = await http.post(Uri.parse(redirectedUrl),
              headers: headers, body: body);
        }
      }
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final smsCode = data['code'];
        print('SMS Code: $smsCode');

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CodeVerificationScreen(
                phoneNumber: phoneNumber, smsCode: smsCode),
          ),
        );
      } else {
        print(
            'Failed to send phone number. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final phoneNumber = _phoneController.text;
                sendPhoneNumber(context, phoneNumber);
              },
              child: const Text('Send Code'),
            ),
          ],
        ),
      ),
    );
  }
}

class CodeVerificationScreen extends StatelessWidget {
  final String phoneNumber;
  final String smsCode;
  final TextEditingController _codeController = TextEditingController();

  CodeVerificationScreen(
      {super.key, required this.phoneNumber, required this.smsCode});

  Future<void> verifyCode(BuildContext context, String code) async {
    final url = Uri.parse('https://namito.tatadev.pro/api/users/verify-code/');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'phone_number': phoneNumber, 'code': code});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print('Response data: $data');
        final accessToken = data['access_token']; // Алынган токен
        print('Token: $accessToken');
        if (accessToken != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(token: accessToken),
            ),
          );
        } else {
          print('Token not found in response.');
        }
      } else {
        print('Failed to verify code. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _codeController,
              decoration: const InputDecoration(labelText: 'Enter Code'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final code = _codeController.text;
                verifyCode(context, code);
              },
              child: const Text('Verify'),
            ),
            const SizedBox(height: 20),
            Text('Received Code: $smsCode'), // СМС кодду экранда көрсөтүү
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String token;

  const HomeScreen({super.key, required this.token});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Token: $token'),
      ),
    );
  }
}
