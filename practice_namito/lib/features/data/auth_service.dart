import 'dart:convert';

import 'package:http/http.dart' as http;

class Repo {
  Future<void> loginWithPhoneNumber({required String phoneNumber}) async {
    final url = Uri.parse('https://namito.tatadev.pro/api/users/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'phone_number': phoneNumber});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        final token = data['token'];
        print('Token: $token');
      } else {
        print('Failed to login. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
