import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Exm extends StatelessWidget {
  const Exm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: TextField(
          inputFormatters: [MaskTextInputFormatter(mask: "+7 ### ###-##-##")],
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(hintText: "+7__ ___-__-__")),
    ));
  }
}
