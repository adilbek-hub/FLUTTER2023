import 'package:flutter/material.dart';
import 'package:practice_namito/features/data/auth_service.dart';
import 'package:practice_namito/features/presentation/pages/home/home_page.dart';

class CodeVerificationScreen extends StatelessWidget {
  final String phoneNumber;
  final String smsCode;
  final TextEditingController _codeController = TextEditingController();

  CodeVerificationScreen(
      {super.key, required this.phoneNumber, required this.smsCode});

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
              onPressed: () async {
                final code = _codeController.text;
                final tokenModel = await LoginRepo.verifyCode(code);
                if (tokenModel != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(
                        token: tokenModel.accessToken!,
                      ),
                    ),
                  );
                } else {
                  // Handle the error, e.g., show a Snackbar or a dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Verification failed')),
                  );
                }
              },
              child: const Text('Verify'),
            ),
            const SizedBox(height: 20),
            Text('Received Code: $smsCode'),
          ],
        ),
      ),
    );
  }
}
