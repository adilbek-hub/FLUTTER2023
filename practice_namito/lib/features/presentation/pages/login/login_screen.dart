import 'package:flutter/material.dart';
import 'package:practice_namito/features/data/repo/login_repo.dart';
import 'package:practice_namito/features/presentation/pages/code_verification/code_verification_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final String phoneNumber = phoneNumberController.text;
                if (phoneNumber.isNotEmpty) {
                  try {
                    final LoginRepo loginRepo = LoginRepo();
                    await loginRepo.login(phoneNumber: phoneNumber);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            VerifyPinScreen(phoneNumber: phoneNumber),
                      ),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login failed: $e')),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Please enter your phone number')),
                  );
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
