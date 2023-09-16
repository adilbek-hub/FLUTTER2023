import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import 'exm.dart';

class Variables {
  final phoneNumber = PhoneMask(
      formatter: MaskTextInputFormatter(
        mask: "+# (###) ###-##-##",
        filter: <String, RegExp>{'#': RegExp(r'[0-9]')},
      ),
      hint: "+7 (***) ***-**-**",
      textInputType: TextInputType.phone);
}

Variables variables = Variables();
