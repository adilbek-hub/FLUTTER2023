class InformaticaQuestions {
  final String text;
  final String images;
  final List<InformaticaAnswer> jooptor;
  const InformaticaQuestions({
    required this.text,
    required this.images,
    required this.jooptor,
  });
}

class InformaticaAnswer {
  const InformaticaAnswer({required this.text, required this.isTrue});
  final String text;
  final bool isTrue;
}

//Персонал компьютер
const personalComputer1 = InformaticaQuestions(
    text: 'Компьютердик кейс деген эмне?',
    images: 'computer-case',
    jooptor: [
      InformaticaAnswer(
          text:
              'Компьютердин компоненттердин камтыган жана коргогон физикалык кабык',
          isTrue: true),
      InformaticaAnswer(text: 'Программдоо тили', isTrue: false),
      InformaticaAnswer(text: 'Компьютердин чубалгылары', isTrue: false),
      InformaticaAnswer(text: 'Маалымат топтоочу жай', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const personalComputer2 = InformaticaQuestions(
    text: 'Процессор бул ...',
    images: 'processor',
    jooptor: [
      InformaticaAnswer(text: 'Компьютер үчүн стол', isTrue: false),
      InformaticaAnswer(text: 'Компьютердин мээси', isTrue: true),
      InformaticaAnswer(text: 'Клавиатуранын бир түрү', isTrue: false),
      InformaticaAnswer(text: 'Ноудбуктун акыркы версиясы', isTrue: false),
    ]);
/////////////////////////////////////////////////////////
const personalComputer3 = InformaticaQuestions(
    text: 'Оперативдүү эс кандай кызмат аткарат',
    images: 'operativdik-es',
    jooptor: [
      InformaticaAnswer(
          text: 'Сайт жана веб тиркемелерде иштөө үчүн браузер', isTrue: false),
      InformaticaAnswer(
          text: 'Маалыматтарды убактылуу сактап турат', isTrue: true),
      InformaticaAnswer(
          text: 'Компьтердин экранын көзөмөлдөп турат', isTrue: false),
      InformaticaAnswer(
          text: 'Маалыматтардын толуп кетүүсүн алдын алат', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const personalComputer4 = InformaticaQuestions(
    text: 'HDD деп эмнени түшүнөсүз?',
    images: 'hdd-ssd',
    jooptor: [
      InformaticaAnswer(text: 'Кадимки дисктин өзү', isTrue: false),
      InformaticaAnswer(text: 'Виндовс жана Линукс программасы', isTrue: false),
      InformaticaAnswer(
          text: 'Маалыматты туруктуу сактоо үчүн колдонулат', isTrue: true),
      InformaticaAnswer(text: 'Аудио сигналын иштетет', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const personalComputer5 = InformaticaQuestions(
    text: 'Видео картанын кызматы?',
    images: 'video-karta',
    jooptor: [
      InformaticaAnswer(text: 'Барсбек кагандын бийлигинен', isTrue: false),
      InformaticaAnswer(
          text: 'Ордо-балыкты кыргыздар басып алгандан', isTrue: false),
      InformaticaAnswer(
          text: '751-ж. Талас дарыясындагы согуштан', isTrue: false),
      InformaticaAnswer(
          text:
              'Графиканы иштетүү жана монитордогу сүрөттү көрсөтүү үчүн жооптуу',
          isTrue: true),
    ]);

const personalComputer6 =
    InformaticaQuestions(text: 'Үн картасы', images: 'sound-card', jooptor: [
  InformaticaAnswer(text: 'Компьютерди блокко коюуучу функция', isTrue: false),
  InformaticaAnswer(text: 'Процессордун бир түрү', isTrue: false),
  InformaticaAnswer(text: 'Маалымат жогултуп кэшке сактайт', isTrue: false),
  InformaticaAnswer(text: 'Аудио сигналдары иштетет', isTrue: true),
]);
////////////////////////////////////////////////////////
List<InformaticaQuestions> personalComputer = [
  personalComputer1,
  personalComputer2,
  personalComputer3,
  personalComputer4,
  personalComputer5,
  personalComputer6
];

// Компьютердик тармактар
const computerdikTarmaktar1 = InformaticaQuestions(
    text: 'Компьютердик тармактын топологиясы бул?',
    images: 'топология',
    jooptor: [
      InformaticaAnswer(text: 'Протокол дегенди билдирет', isTrue: false),
      InformaticaAnswer(
          text: 'Dart програмдоо тилинин логикасын аныктайт', isTrue: false),
      InformaticaAnswer(
          text: 'Тамактын физикалык жана логикалык түзүлүшүн аныктайт',
          isTrue: true),
      InformaticaAnswer(
          text: 'Flutter фреймворктогу виджеттин бири', isTrue: false),
    ]);

const computerdikTarmaktar2 = InformaticaQuestions(
    text: 'Кээ бир белгилүү протоколдор',
    images: 'протокол',
    jooptor: [
      InformaticaAnswer(text: 'АТС станциясы', isTrue: false),
      InformaticaAnswer(
          text: 'Сайттын административдик жоболору', isTrue: false),
      InformaticaAnswer(text: 'Протокол бул кагаз иши', isTrue: false),
      InformaticaAnswer(text: 'TCP/IP,Eithernet,Wi-Fi,HTTP,FTP', isTrue: true),
    ]);
/////////////////////////////////////////////////////////
const computerdikTarmaktar3 = InformaticaQuestions(
    text: 'Тармактык жабдык кандай кызмат аткарат',
    images: 'кабель',
    jooptor: [
      InformaticaAnswer(
          text: 'Компьютерге вирус киргизүүчү код', isTrue: false),
      InformaticaAnswer(
          text:
              'Тармактагы түзмөктөр ортосунда байланышты жана маалыматтарды берүүнү камсыз кылат',
          isTrue: true),
      InformaticaAnswer(
          text: 'Дискке маалымат сактоочу программа', isTrue: false),
      InformaticaAnswer(
          text: 'Эс тутумга террабайттык эс тутум кошуучу программа',
          isTrue: false),
    ]);
//////////////////////////////////////////////////////
const computerdikTarmaktar4 = InformaticaQuestions(
    text: '192.168.0.1 же 192.168.1.1 эмне болушу мүмкүн?',
    images: 'ip',
    jooptor: [
      InformaticaAnswer(text: 'Програмдоо тилинин логикасы', isTrue: false),
      InformaticaAnswer(text: 'Клавиатура коюуучу жай', isTrue: false),
      InformaticaAnswer(text: 'Компьютердик кейс', isTrue: false),
      InformaticaAnswer(text: 'IP дарек түрү', isTrue: true),
    ]);

////////////////////////////////////////////////////////
List<InformaticaQuestions> computerdicTarmaktar = [
  computerdikTarmaktar1,
  computerdikTarmaktar2,
  computerdikTarmaktar3,
  computerdikTarmaktar4,
];

// Системалык программалык камсыздоо
const sistemalykKamsyzdoo1 = InformaticaQuestions(
    text: 'Операциялык система бул?',
    images: 'оперциялык_система',
    jooptor: [
      InformaticaAnswer(
          text: 'Интерфейсти камсыздоочу негизги программалык камсыздоо',
          isTrue: true),
      InformaticaAnswer(text: 'Протоколдор жыйнагы', isTrue: false),
      InformaticaAnswer(text: 'Компьютерди жандыруучу блок', isTrue: false),
      InformaticaAnswer(text: 'Программаларды сактоочу диск', isTrue: false),
    ]);

const sistemalykKamsyzdoo2 = InformaticaQuestions(
    text: 'Колдонмо программалык камсыздоо деп эмнени түшүндүңүз',
    images: 'програмное_обеспечения',
    jooptor: [
      InformaticaAnswer(text: 'Компьютердин IP дареги', isTrue: false),
      InformaticaAnswer(text: 'Тиркемелер жоболору', isTrue: false),
      InformaticaAnswer(
          text: 'Катуу дисктин сактоочу папкалары', isTrue: false),
      InformaticaAnswer(text: 'Тиркемелер', isTrue: true),
    ]);
/////////////////////////////////////////////////////////
const sistemalykKamsyzdoo3 = InformaticaQuestions(
    text: 'Маалымат базасы деп эмнени айтабыз?',
    images: 'маалымат_базасы',
    jooptor: [
      InformaticaAnswer(text: 'Сактоочу диск', isTrue: false),
      InformaticaAnswer(
          text: 'Маалыматтарды түзүү, башкаруу жана иштетүү', isTrue: true),
      InformaticaAnswer(
          text: 'Маалыматты жокко чыгаруу программасы', isTrue: false),
      InformaticaAnswer(
          text: 'Графиканын жогорку деңгеелин чагылдыруу', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const sistemalykKamsyzdoo4 = InformaticaQuestions(
    text: 'Программалык камсыздоону иштеп чыгуу бул?',
    images: 'программалык_камсыздоо_иштеп_чыгуу',
    jooptor: [
      InformaticaAnswer(
          text: 'Персоналдык компьютерге вирустук программаны жүктөө',
          isTrue: false),
      InformaticaAnswer(
          text: 'Программа түзүүгө программа тилин иштеп чыгуу', isTrue: true),
      InformaticaAnswer(
          text: 'Компьютер чубалгыларын орноштуруу', isTrue: false),
      InformaticaAnswer(text: 'IP дарек түрү', isTrue: false),
    ]);

////////////////////////////////////////////////////////
const sistemalykKamsyzdoo5 = InformaticaQuestions(
    text: 'Тармактык программалык камсыздоо деген эмне?',
    images: 'тармактык_программалык_камсыздоо',
    jooptor: [
      InformaticaAnswer(text: 'Монитордун акыркы версиясы', isTrue: false),
      InformaticaAnswer(
          text: 'Компилятор менен иштөөчү машиналык код', isTrue: false),
      InformaticaAnswer(
          text: 'Фреймворк үчүн колдонуучу програмдоо тили', isTrue: false),
      InformaticaAnswer(
          text:
              'Компьютердик тармактарда байланышты жана малымат алмашууну камсыз кылат',
          isTrue: true),
    ]);

////////////////////////////////////////////////////////
List<InformaticaQuestions> sistemalykKamsyzdoo = [
  sistemalykKamsyzdoo1,
  sistemalykKamsyzdoo2,
  sistemalykKamsyzdoo3,
  sistemalykKamsyzdoo4,
  sistemalykKamsyzdoo5,
];
