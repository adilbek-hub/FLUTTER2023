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
