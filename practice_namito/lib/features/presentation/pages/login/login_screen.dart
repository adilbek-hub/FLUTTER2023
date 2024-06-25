import 'package:flutter/material.dart';
import 'package:practice_namito/features/data/auth_service.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();

  LoginScreen({super.key});

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
                LoginRepo.sendPhoneNumber(context, phoneNumber);
              },
              child: const Text('Send Code'),
            ),
          ],
        ),
      ),
    );
  }
}
