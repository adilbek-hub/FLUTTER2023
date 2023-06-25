import 'dart:ui';

import 'package:education/constants/app_text.dart';

class Subjects {
  const Subjects(
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

const borborShaarlar = Subjects(
  title: 'Европа өлкөлөрүнүн борбор шаарлары',
  description:
      'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const usa = Subjects(
  title: 'Америка Кошмо Штаттары',
  description:
      'Америка Кошмо Штаттары жер планетасынын батыш тарабында орун алган дүйнөдөгү кубаттуу жана чоң өлкөлөрдүн бири. АКШ тууралуу кенен маалымат алыңыз.',
  image: 'assets/images/capitals/america.png',
  bgColor: Color.fromARGB(255, 128, 195, 250),
  subject:
      'https://ky.wikipedia.org/wiki/%D3%A8%D0%BB%D0%BA%D3%A9%D0%BB%D3%A9%D1%80%D0%B4%D2%AF%D0%BD_%D0%B1%D0%BE%D1%80%D0%B1%D0%BE%D1%80_%D1%88%D0%B0%D0%B0%D1%80%D0%BB%D0%B0%D1%80%D1%8B%D0%BD%D1%8B%D0%BD_%D1%82%D0%B8%D0%B7%D0%BC%D0%B5%D1%81%D0%B8',
);

const asia = Subjects(
  title: 'Азия континенти',
  description:
      'Азия Континенти жер шаарынын чыгыш тарабынан орун алган материк.',
  image: 'assets/images/capitals/globe.png',
  bgColor: Color.fromARGB(255, 154, 247, 157),
);

const worldCapitals = Subjects(
  title: 'Борбор шаарлар',
  description:
      'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: Color.fromARGB(255, 249, 239, 147),
);

List<Subjects> subjecstList = [
  borborShaarlar,
  usa,
  asia,
  worldCapitals,
];

///Биология үчүн класс
class SubjectsBiology {
  SubjectsBiology(
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

final teeriler1 = SubjectsHistory(
  title: 'Сиз теерилер1 тууралуу кызыктуу темалар менен тааныша аласыз',
  description:
      'Кымбаттуу окуучу, биз терилердин кандай өзгөчөлүктөрү бар экендиги тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

final teeriler2 = SubjectsHistory(
  title: 'Сиз теерилер2 тууралуу кызыктуу темалар менен тааныша аласыз',
  description:
      'Кымбаттуу окуучу, биз терилердин кандай өзгөчөлүктөрү бар экендиги тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

final teeriler3 = SubjectsHistory(
  title: 'Сиз теерилер3 тууралуу кызыктуу темалар менен тааныша аласыз',
  description:
      'Кымбаттуу окуучу, биз терилердин кандай өзгөчөлүктөрү бар экендиги тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

List<SubjectsHistory> subjectsBiology = [
  teeriler1,
  teeriler2,
  teeriler3,
];

//////Тарых үчүн класс
class SubjectsHistory {
  SubjectsHistory(
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

final tema1 = SubjectsHistory(
  title: 'tema1де сиз тарых тууралуу билесиз',
  description:
      'Кымбаттуу окуучу, биз тарыхтын кандай өзгөчөлүктөрү бар экендиги тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

final tema2 = SubjectsHistory(
  title: 'Сиз tema2 тууралуу кызыктуу темалар менен тааныша аласыз',
  description:
      'Кымбаттуу окуучу, биз тарыхтын кандай өзгөчөлүктөрү бар экендиги тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

final tema3 = SubjectsHistory(
  title: 'Сиз tema3 тууралуу кызыктуу темалар менен тааныша аласыз',
  description:
      'Кымбаттуу окуучу, биз тарыхтын кандай өзгөчөлүктөрү бар экендиги тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

List<SubjectsHistory> subjectsHistory = [
  tema1,
  tema2,
  tema3,
];
