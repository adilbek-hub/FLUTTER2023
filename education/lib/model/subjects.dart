import 'dart:ui';

import 'package:education/constants/app_text.dart';

class Subjects {
  Subjects(
      {required this.bgColor,
      required this.title,
      required this.description,
      this.subject,
      required this.image});

  final String title;
  final String description;
  final String? subject;
  final String image;
  final Color bgColor;
}

final borborShaarlar = Subjects(
  title: 'Европа өлкөлөрүнүн борбор шаарлары',
  description:
      'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

final usa = Subjects(
  title: 'Америка Кошмо Штаттары',
  description:
      'Америка Кошмо Штаттары жер планетасынын батыш тарабында орун алган дүйнөдөгү кубаттуу жана чоң өлкөлөрдүн бири. АКШ тууралуу кенен маалымат алыңыз.',
  image: 'assets/images/capitals/america.png',
  bgColor: const Color.fromARGB(255, 128, 195, 250),
  subject:
      'https://ky.wikipedia.org/wiki/%D3%A8%D0%BB%D0%BA%D3%A9%D0%BB%D3%A9%D1%80%D0%B4%D2%AF%D0%BD_%D0%B1%D0%BE%D1%80%D0%B1%D0%BE%D1%80_%D1%88%D0%B0%D0%B0%D1%80%D0%BB%D0%B0%D1%80%D1%8B%D0%BD%D1%8B%D0%BD_%D1%82%D0%B8%D0%B7%D0%BC%D0%B5%D1%81%D0%B8',
);

final asia = Subjects(
  title: 'Азия континенти',
  description:
      'Азия Континенти жер шаарынын чыгыш тарабынан орун алган материк.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 154, 247, 157),
);

final subject1 = Subjects(
  title: 'Борбор шаарлар',
  description:
      'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 249, 239, 147),
);

final subject2 = Subjects(
  title: 'Америка Кошмо Штаттары',
  description:
      'Америка Кошмо Штаттары жер планетасынын батыш тарабында орун алган дүйнөдөгү кубаттуу жана чоң өлкөлөрдүн бири. АКШ тууралуу кенен маалымат алыңыз.',
  image: 'assets/images/capitals/america.png',
  bgColor: const Color.fromARGB(255, 249, 201, 130),
);

final subject3 = Subjects(
  title: 'Азия континенти',
  description:
      'Азия Континенти жер шаарынын чыгыш тарабынан орун алган материк.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
);

List<Subjects> subjecstList = [
  borborShaarlar,
  usa,
  asia,
  subject1,
  subject2,
  subject3,
];
