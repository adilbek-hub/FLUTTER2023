import 'dart:convert';

import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl = 'https://namito.tatadev.pro/api/users/';

  Future<bool> sendCode(String phoneNumber) async {
    final url = Uri.parse('${baseUrl}login/');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'phone': phoneNumber});

    print('Sending phone number: $phoneNumber'); // Add this line for debugging

    final response = await http.post(url, headers: headers, body: body);

    // Print response for debugging
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return response.statusCode == 200;
  }

  Future<String?> verifyCode(String code) async {
    final url = Uri.parse('${baseUrl}verify-code/');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'code': code});

    final response = await http.post(url, headers: headers, body: body);

    // Print response for debugging
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['access_token'];
    } else {
      return null;
    }
  }
}
