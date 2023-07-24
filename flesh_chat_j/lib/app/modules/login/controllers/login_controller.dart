import 'package:flesh_chat_j/app/modules/login/services/login_service.dart';
import 'package:flesh_chat_j/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;

  final email = TextEditingController();
  final password = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future<void> loginRegister(bool isLogin) async {
    if (formKey.currentState!.validate() &&
        GetUtils.isEmail(email.text) &&
        GetUtils.isPassport(password.text)) {
      if (isLogin) {
        // Login logic
      } else {
        Get.dialog(const CupertinoActivityIndicator());
        final user = await LoginService.register(email.text, password.text);
        // Get.back();
        if (user != null) {
          await Get.offAllNamed(Routes.HOME);
        } else {
          Get.defaultDialog(title: 'Error', cancel: const Text('Kata boldu'));
        }
      }
    } else {
      Get.showSnackbar(const GetSnackBar(
        message: 'Formany tuura toltur',
      ));
    }
  }
}
