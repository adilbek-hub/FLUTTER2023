import 'package:tapshyrma_4_tel_email_model/model.dart';

final students = <Student>[mayrambek, dinara, aybek];

void controllEmailPhone(String phone, String email) {
  for (final student in students) {
    if (phone == student.phone && email == student.email) {
      print("Kosh kelding: ${student.name}");
      break;
    } else {
      print("Kechresiz phone je email kata ");
    }
  }
}
