import 'package:flutter/material.dart';

// 1. GlobalKey менен форма түзүңүз
// 2. Текшерүү логикасы менен TextFormField кошуңуз
// 3. Форманы текшерүү жана тапшыруу үчүн баскычты түзүңүз
class FormValidate extends StatefulWidget {
  const FormValidate({super.key});

  @override
  State<FormValidate> createState() => _FormValidateState();
}

class _FormValidateState extends State<FormValidate> {
  // 1. Форма виджетін уникалдуу түрдө аныктаган глобалдык ачкычты түзүңүз
  // жана форманы текшерүүгө мүмкүндүк берет.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Form Validate',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Жогоруда түзүлгөн _formKey аркылуу Форма виджетін түзүңүз.
          Form(
            key: _formKey,
            // TextFormFields жана ElevatedButton бул жерге кошуңуз.
            child: TextFormField(
              // Валидатор колдонуучу киргизген текстти алат.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Сураныч текст жазыңыз!';
                } else {
                  return null;
                }
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                // Текшерүү форма жарактуу болсо чындыкты кайтарат, же болбосо жалган.
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Маалыматтарды иштетүү')),
                  );
                }
              },
              child: const Text('button'))
        ],
      ),
    );
  }
}
