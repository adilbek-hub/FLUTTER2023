import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:news_app/components/custom_button.dart';
import 'package:news_app/components/fields/custom_text_field.dart';
import 'package:news_app/home/give_news.dart';
import 'package:news_app/home/view/for_administrator_login_page.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginController = TextEditingController();
  final _registerController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.only(top: 20),
          children: [
            CustomTextField(
                text: 'Сиздин логин',
                labelText: 'Логин',
                controller: _loginController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Логиниңизди толтуруңуз';
                  }
                  return null;
                }),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              text: 'Сиздин сыр сөзүңүз',
              labelText: 'Сыр сөз',
              controller: _registerController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Сыр сөзүңүздү толтуруңуз';
                }
                return null;
              },
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
                text: 'Кирүү',
                borderRadius: 25,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => GiveNews())));
                  }
                })
          ],
        ),
      ),
    );
  }
}
