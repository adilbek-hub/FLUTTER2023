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

//География үчүн объекттер
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

///Биология үчүн объекттер
const manAndanimal = Subjects(
  title: 'Кишинин сүт эмүүчү жаныбарлар менен окшоштугу жана айырмачылыгы',
  description:
      '<Биологияда адам менен жарыбардын окшоштуктары жана айырмачылыктары тууралуу кыскача билип алыңыз',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const kletka = Subjects(
  title: 'Клетка жөнүндө түшүнүк',
  description:
      'Кымбаттуу окуучу, клетка деген эмне? ушул тууралуу маалымат алыңыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const nervSistemasy = Subjects(
  title: 'Нерв системасынын түзүлүшү жана анын кызматы',
  description: 'Кымбаттуу окуучу, нерв системалары жөнүндө окуп билип алыңыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const mee = Subjects(
  title: 'Мээ',
  description: 'Кымбаттуу окуучу, мээ тууралуу маалымат алыңыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

List<Subjects> subjectsBiologyList = [
  manAndanimal,
  kletka,
  nervSistemasy,
  mee,
];

//////Тарых үчүн objects
const roma = Subjects(
  title: 'Рим империясы',
  description: 'Тарыхта Рим империясы жөнүндө таанышыңыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const germandyktar = Subjects(
  title: 'Байыркы Германдыктар',
  description: 'Кымбаттуу окуучу, байыркы германдыктар тууралуу окуп билиңиз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const italia = Subjects(
  title: 'Италия 5 10 кылымдарда',
  description:
      'Кымбаттуу окуучу, биз байыркы Италиянын өзгөчөлүктөрү тууралуу сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const nemisKoroldugu = Subjects(
  title: 'Немис королдугунун жаралышы',
  description: 'Немис королдугунун жаралышы тууралуу билип алыңыз',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

List<Subjects> subjectsHistoryList = [
  roma,
  germandyktar,
  italia,
  nemisKoroldugu,
];

//////Информатика үчүн objects
const computer = Subjects(
  title: 'Компьютердин негизги бөлүктөрү жана алардын функциялары',
  description:
      'Кымбаттуу окуучу, сиз компьютер деген эмне жана анын функцияларын окуп үйрөнүңүз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const personalComputer = Subjects(
  title: 'Персонал компьютер',
  description: 'Кымбаттуу окуучу, Персонал компьютер тууралуу окуп билиңиз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const computerTarmaktary = Subjects(
  title: 'Компьютердик тармактар',
  description: 'Кымбаттуу окуучу, компьютердин тармактары менен таанышыңыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const spk = Subjects(
  title: 'Системалык программалык камсыздоо',
  description: 'Системалык программалык камсыздоо тууралуу окуңуз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: const Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

List<Subjects> subjectsInformaticaList = [
  computer,
  personalComputer,
  computerTarmaktary,
  spk,
];
