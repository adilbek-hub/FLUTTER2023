import 'package:flutter/material.dart';
import 'package:practice_namito/features/data/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();
  bool _isCodeSent = false;
  final AuthService _authService = AuthService();

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
            if (!_isCodeSent)
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: 'Phone Number'),
                keyboardType: TextInputType.phone,
              ),
            if (_isCodeSent)
              TextField(
                controller: _codeController,
                decoration:
                    const InputDecoration(labelText: 'Verification Code'),
                keyboardType: TextInputType.number,
              ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isCodeSent ? _verifyCode : _sendCode,
              child: Text(_isCodeSent ? 'Verify Code' : 'Send Code'),
            ),
          ],
        ),
      ),
    );
  }

  void _sendCode() async {
    final phone = _phoneController.text;
    if (phone.isNotEmpty) {
      print('Phone number to send: $phone'); // Add this line for debugging
      final success = await _authService.sendCode(phone);
      if (success) {
        setState(() {
          _isCodeSent = true;
        });
        print('Code sent successfully');
      } else {
        print('Failed to send code');
      }
    }
  }

  void _verifyCode() async {
    final code = _codeController.text;
    if (code.isNotEmpty) {
      final token = await _authService.verifyCode(code);
      if (token != null) {
        print('Token: $token');
        // Handle successful login (e.g., navigate to the next screen)
      } else {
        print('Failed to verify code');
      }
    }
  }
}
