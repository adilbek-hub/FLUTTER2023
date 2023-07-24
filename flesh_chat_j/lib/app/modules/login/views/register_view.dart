import 'package:flesh_chat_j/app/modules/login/controllers/login_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class RegisterView extends GetView<LoginController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RegisterView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
