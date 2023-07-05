import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:education/constants/app_text.dart';

class Subjects {
  const Subjects(
      {this.bgColor,
      required this.title,
      required this.description,
      this.subject,
      required this.image});

  final String title;
  final String description;
  final String? subject;
  final String image;
  final Color? bgColor;
}

//География үчүн объекттер
const borborShaarlar = Subjects(
  title: 'Европа өлкөлөрүнүн борбор шаарлары',
  description:
      'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  // bgColor: Color.fromARGB(255, 246, 141, 134),
  subject: AppText.capitals,
);

const usa = Subjects(
  title: 'Америка Кошмо Штаттары',
  description:
      'Америка Кошмо Штаттары жер планетасынын батыш тарабында орун алган дүйнөдөгү кубаттуу жана чоң өлкөлөрдүн бири. АКШ тууралуу кенен маалымат алыңыз.',
  image: 'assets/images/capitals/america.png',
  // bgColor: Color.fromARGB(255, 128, 195, 250),
  subject:
      'https://ky.wikipedia.org/wiki/%D3%A8%D0%BB%D0%BA%D3%A9%D0%BB%D3%A9%D1%80%D0%B4%D2%AF%D0%BD_%D0%B1%D0%BE%D1%80%D0%B1%D0%BE%D1%80_%D1%88%D0%B0%D0%B0%D1%80%D0%BB%D0%B0%D1%80%D1%8B%D0%BD%D1%8B%D0%BD_%D1%82%D0%B8%D0%B7%D0%BC%D0%B5%D1%81%D0%B8',
);

const asia = Subjects(
  title: 'Азия континенти',
  description:
      'Азия Континенти жер шаарынын чыгыш тарабынан орун алган материк.',
  image: 'assets/images/capitals/globe.png',
  // bgColor: Color.fromARGB(255, 154, 247, 157),
);

const worldCapitals = Subjects(
  title: 'Борбор шаарлар',
  description:
      'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.',
  image: 'assets/images/capitals/globe.png',
  // bgColor: Color.fromARGB(255, 249, 239, 147),
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
  bgColor: Colors.blue,
  subject: AppText.capitals,
);

const personalComputer = Subjects(
  title: 'Персонал компьютер',
  description: 'Кымбаттуу окуучу, Персонал компьютер тууралуу окуп билиңиз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: Colors.white,
  subject: AppText.capitals,
);

const computerTarmaktary = Subjects(
  title: 'Компьютердик тармактар',
  description: 'Кымбаттуу окуучу, компьютердин тармактары менен таанышыңыз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: Colors.orange,
  subject: AppText.capitals,
);

const spk = Subjects(
  title: 'Системалык программалык камсыздоо',
  description: 'Системалык программалык камсыздоо тууралуу окуңуз.',
  image: 'assets/images/capitals/globe.png',
  bgColor: Colors.green,
  subject: AppText.capitals,
);

List<Subjects> subjectsInformaticaList = [
  computer,
  personalComputer,
  computerTarmaktary,
  spk,
];

// Информатикадагы компьютердин тетиктери үчүн класс
class ComputerStructur {
  ComputerStructur({
    required this.name,
    required this.image,
    required this.text,
    this.text2,
  });
  final String name;

  final String text;
  final String image;
  final String? text2;
}

ComputerStructur negizgiPlata = ComputerStructur(
    text2:
        'Негизги плата – бул компьютердин ичиндеги негизги басма схемасы, анда компьютер системасынын ар кандай компоненттери жана түзүлүштөрү жайгаштырылган жана бири-бири менен иштешет. Бул процессор, оперативдүү эс, видеокарта, катуу диск жана башка түзүлүштөрдүн ортосундагы байланышты жана өз ара аракеттенүүнү камсыз кылган борбордук элемент.',
    name: 'Негизги плата',
    image: 'nagizgi-plata',
    text: 'Толук маалымат');

ComputerStructur prossesor = ComputerStructur(
    text2:
        'Информатикада процессор (борбордук процессор же процессор) маалыматты иштетүүнүн негизги операцияларын аткарган компьютердик системанын негизги компоненти болуп саналат. Бул программалык көрсөтмөлөрдү аткарууга жана маалыматтарды иштетүүгө жооптуу компьютердин мээси.',
    name: 'Процессор',
    image: 'processor',
    text: 'Толук маалымат');

ComputerStructur videoKarta = ComputerStructur(
    text2:
        'Видеокарта (графикалык адаптер) – экранда графиканы иштетүү жана көрсөтүү үчүн жооптуу компьютердин компоненти. Ал компьютердин аналык платасына туташып, өзүнүн эс тутуму, процессору жана башка компоненттери бар.',
    name: 'Видео карта',
    image: 'video-karta',
    text: 'Толук маалымат');

ComputerStructur operativka = ComputerStructur(
    text2:
        'Random access memory (RAM) – компьютердин эс тутумунун бир түрү, ал процессор иштеп жаткан маалыматтарды жана программаларды убактылуу сактоо үчүн колдонулат. RAM маалыматтарга тез жетүүнү камсыз кылат жана процессорго маалыматты тез иштетүүгө мүмкүндүк берет. RAM компьютердин негизги компоненттеринин бири болуп саналат жана анын иштешинде маанилүү ролду ойнойт.',
    name: 'Оперативдүү эс',
    image: 'operativdik-es',
    text: 'Толук маалымат');

ComputerStructur hhdSsdDisk = ComputerStructur(
    text2:
        'Катуу диск (HDD) жана катуу абалдагы диск (SSD) компьютерлерде жана башка түзмөктөрдө маалыматтарды сактоонун эки башка түрү.\nHDD айлануучу магниттик дисктерден турат, аларда маалыматтар жазылган жана окуу баштары аркылуу окулат. Маалыматтарды алууда баштар дисктерди айланып өтөт, бул бир аз убакытты талап кылат. Бул HDD маалыматтарына кирүү убакыты адатта жогору экенин жана окуу жана жазуу ылдамдыгы дисктин айлануусу жана баштын кыймылы менен чектелет дегенди билдирет.\nSSD, экинчи жагынан, маалыматтарды сактоо үчүн флеш эстутумду колдонот. Анын кыймылдуу бөлүктөрү жок, бул маалыматка тезирээк жетүүнү камсыз кылат. SSDде маалымат чиптерде сакталат жана аны бир эле учурда бир нече жерден окууга жана жазууга болот, натыйжада маалыматтарды берүүнүн жогорку ылдамдыгы жана кирүү убакыттары аз болот.',
    name: 'HDD-SSD дисктер',
    image: 'hdd-ssd',
    text: 'Толук маалымат');

ComputerStructur diskovod = ComputerStructur(
    text2:
        'Оптикалык диск катары да белгилүү болгон диск, оптикалык дисктерден маалыматтарды окуу жана жазуу үчүн түзүлүш. Ал компакт дисктер (CD), DVD жана Blu-ray дисктери менен иштөө үчүн колдонулат. Диск дисктери компьютерлерде жана ноутбуктарда кеңири таралган, бирок алар акыркы жылдары санариптик сактоо форматтарынын өнүгүшүнө жана кээ бир түзүлүштөрдөгү дисктерди алып салууга байланыштуу азыраак популярдуу болуп калды.',
    name: 'Дисковод',
    image: 'cd-dvd-rom',
    text: 'Толук маалымат');

ComputerStructur soundCard = ComputerStructur(
    text2:
        'Үн картасы, ошондой эле аудио карта же үн адаптери катары белгилүү, аудио сигналдарды иштетүүчү компьютердик түзүлүш. Ал үндү ойнотууга, үн жаздырууга, аудио маалыматтарды иштетүүгө жана компьютерге динамиктер, гарнитуралар, микрофондор жана башкалар сыяктуу аудио түзүлүштөр менен байланышуу үчүн арналган.',
    name: 'Үн картасы',
    image: 'sound-card',
    text: 'Толук маалымат');

ComputerStructur cooler = ComputerStructur(
    text2:
        'Жылуулук салгыч желдеткич (ошондой эле муздаткыч же муздаткыч желдеткич деп да аталат) компьютер системаларында жылуулук раковиналарын активдүү муздатуу үчүн колдонулган компонент. Ал радиатордон ашыкча жылуулукту кетирүүчү аба агымын камсыздайт жана процессорлор жана графикалык карталар сыяктуу компоненттердин оптималдуу температурада иштешине жардам берет.',
    name: 'Желдеткич радиатору менен',
    image: 'cooler',
    text: 'Толук маалымат');

ComputerStructur powerSupplies = ComputerStructur(
    text2:
        'Компьютердик энергия менен жабдуу бирдиги (PSU) - компьютер системасынын бардык компоненттерин иштетүү үчүн электр энергиясы менен камсыз кылуучу түзүлүш. Ал электр энергиясын AC тармагындагы чыңалуудан түз чыңалууга (DC) айлантат, ал компьютердин компоненттерин кубаттоо үчүн зарыл.',
    name: 'Компютердин кубат алуучу блогу',
    image: 'power-supplies',
    text: 'Толук маалымат');

ComputerStructur computerCase = ComputerStructur(
    text2:
        'Компьютердин корпусу, ошондой эле система корпусу же шасси деп аталат, бул компьютердин ички компоненттерин камтыган жана коргогон тышкы кабык. Бул энелик плата, процессор, видеокарта, катуу дисктер, электр менен жабдуу жана башка компоненттер орнотулган металл же пластик түзүлүш.',
    name: 'Компьютердик кейс',
    image: 'computer-case',
    text: 'Толук маалымат');

ComputerStructur manitor = ComputerStructur(
    text2:
        'Перифериялык түзүлүш: Монитор – компьютер системасынын визуалдык маалыматын көрсөтүүчү чыгаруучу түзүлүш. Бул колдонуучунун компьютер менен визуалдык өз ара аракеттенүүсүнүн негизги интерфейси жана текстти, сүрөттөрдү, видеолорду жана башка графикалык элементтерди көрсөтөт.',
    name: 'Монитор',
    image: 'monitor',
    text: 'Толук маалымат');

ComputerStructur keyBoard = ComputerStructur(
    text2:
        'Перифериялык түзүлүштөр: Клавиатура – ​​колдонуучуга текстти, буйруктарды жана башка маалыматты компьютерге же башка түзүлүшкө киргизүүгө мүмкүндүк берүүчү киргизүү түзүлүш. Ал тамгаларга, сандарга, символдорго жана функциялык буйруктарга туура келген баскычтардын жыйындысынан турат.',
    name: 'Клавиатура',
    image: 'keyboard',
    text: 'Толук маалымат');

ComputerStructur pcMouse = ComputerStructur(
    text2:
        'Перифериялык түзүлүштөр: Чычкан – бул колдонуучуга компьютер экранындагы көрсөткүчтү башкарууга жана тандоо, кыймыл жана чыкылдатуу(басуу) сыяктуу ар кандай аракеттерди жасоого мүмкүндүк берүүчү киргизүү түзүлүш. Бул Иш столдун бетинде же килемде жылдырыла турган кичинекей түзүлүш жана анын бир же бир нече баскычы бар.',
    name: 'Компьютердик чычкан',
    image: 'pc-mouse',
    text: 'Толук маалымат');

ComputerStructur colonka = ComputerStructur(
    text2:
        'Перифериялык түзүлүштөр: Динамиктер, ошондой эле динамиктер же катуу сүйлөгүчтөр катары белгилүү, үн чыгаруучу түзүлүштөр. Алар компьютерден же башка аудио булактардан музыка, сүйлөө жана үн эффекттери сыяктуу аудио сигналдарды ойнотуу үчүн иштелип чыккан.',
    name: 'Үн колонкалар',
    image: 'pc-speakers',
    text: 'Толук маалымат');

List<ComputerStructur> computerStructurList = [
  negizgiPlata,
  prossesor,
  videoKarta,
  operativka,
  hhdSsdDisk,
  diskovod,
  soundCard,
  cooler,
  powerSupplies,
  computerCase,
  manitor,
  keyBoard,
  pcMouse,
  colonka,
];
