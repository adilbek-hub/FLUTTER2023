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



/*

рефреш токен менен аксес токен эмне үчүн керек


Access Token жана Refresh Token авторизация жана сессияларды башкаруу үчүн колдонулат. Алардын негизги максаттары жана айырмачылыктары төмөндө түшүндүрүлгөн.

Access Token (Аксес Токен)
Access Token негизги авторизация токени болуп саналат жана ал төмөнкү максаттар үчүн колдонулат:

Авторизация: Бул токенди серверге жөнөтүп, ресурс же API-ге кирүү укугуңузду тастыктайсыз.
Кыска мөөнөт: Аксес токен кыска убакытка жарактуу болот (мисалы, 15 мүнөт же 1 саат). Бул коопсуздукту жогорулатуу үчүн жасалат. Эгерде токен уурдалса, ал тез арада мөөнөтү бүтөт.
Refresh Token (Рефреш Токен)
Refresh Token сессияны узартуу үчүн колдонулат жана анын максаты:

Узак мөөнөт: Рефреш токен көбүнчө узак убакытка жарактуу болот (мисалы, бир нече күн же жума).
Аксес токенди жаңылоо: Аксес токендин мөөнөтү бүтүп калганда, рефреш токенди колдонуп жаңы аксес токенди алуу үчүн серверге кайрыла аласыз. Бул колдонуучуга кайрадан логин кылуу керектигин болтурбоого жардам берет.
Колдонуу процессинин агымы
Логин кылуу:

Колдонуучу логин кылганда, серверден эки токен алат: аксес токен жана рефреш токен.
Ресурстарга кирүү:

Колдонуучу ресурс же API-ге кирүү үчүн аксес токенди колдонуп серверге кайрылат.
Сервер аксес токенди текшерип, уруксат берилсе, ресурсту кайтарат.
Аксес токендин мөөнөтү бүткөндө:

Аксес токендин мөөнөтү бүтсө, колдонуучу рефреш токенди колдонуп жаңы аксес токенди сурайт.
Сервер рефреш токенди текшерип, жаңы аксес токенди кайтарат.
Рефреш токендин мөөнөтү бүткөндө:

Рефреш токендин мөөнөтү бүтсө, колдонуучу кайрадан логин кылышы керек.
Мисал
Төмөндө рефреш токенди колдонуп жаңы аксес токенди алуу процесси көрсөтүлдү.

Refresh Token менен жаңы Access Token алуу
dart
Копировать код
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> refreshAccessToken(String refreshToken) async {
  final url = Uri.parse('https://namito.tatadev.pro/api/users/refresh-token/');
  final headers = {'Content-Type': 'application/json'};
  final body = jsonEncode({'refresh_token': refreshToken});

  try {
    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final newAccessToken = data['access_token'];
      print('New Access Token: $newAccessToken');
    } else {
      print('Failed to refresh access token. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
Түшүндүрмөлөр:
refreshAccessToken функциясы:
Рефреш токенди серверге жөнөтүп, жаңы аксес токен алат.
Жаңы аксес токенди print кылат.
Мына ушундайча, рефреш токен жана аксес токенди колдонуп, колдонуучунун сессиясын коопсуз жана үзгүлтүксүз башкарса болот.

 */