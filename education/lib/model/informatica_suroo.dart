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

const h1 = InformaticaQuestions(
    text: 'Компьютердик кейс деген эмне?',
    images: 'петроглифтер',
    jooptor: [
      InformaticaAnswer(
          text:
              'Компьютердин компоненттердин камтыган жана коргогон физикалык кабык',
          isTrue: true),
      InformaticaAnswer(text: 'б.з.ч. 30000-жылга жакын', isTrue: false),
      InformaticaAnswer(text: 'б.з.ч. 10000-жылга жакын', isTrue: false),
      InformaticaAnswer(text: 'б.з.ч. 25000-жылга жакын', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h2 = InformaticaQuestions(
    text:
        'Тундүк кыргызстан толугу менен Россия империясынын курамына качан өткорүлгөн?',
    images: 'tunduk_kyrgyzdar',
    jooptor: [
      InformaticaAnswer(text: '1861-1865', isTrue: false),
      InformaticaAnswer(text: '1855-1868', isTrue: true),
      InformaticaAnswer(text: '1862-1866', isTrue: false),
      InformaticaAnswer(text: '1859-1864', isTrue: false),
    ]);
/////////////////////////////////////////////////////////
const h3 = InformaticaQuestions(
    text:
        'Монголдордун эзүүсуно каршы кыргыздар менен туматтардын көтөрүлүшу болгон',
    images: 'монголдор_эзүүсү',
    jooptor: [
      InformaticaAnswer(text: '1218', isTrue: false),
      InformaticaAnswer(text: '1224', isTrue: true),
      InformaticaAnswer(text: '1269', isTrue: false),
      InformaticaAnswer(text: '1220', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h4 = InformaticaQuestions(
    text:
        'VII-кылымдын башында байыркы Түрк мамлекетинин бири "Он ок "эли деп аталган .Бул кайсы кагандык болгон?',
    images: 'он_ок_эл',
    jooptor: [
      InformaticaAnswer(text: 'Кыргыз', isTrue: false),
      InformaticaAnswer(text: 'Батыш-Түрк', isTrue: false),
      InformaticaAnswer(text: 'Түркөш', isTrue: true),
      InformaticaAnswer(text: 'Чыгыш-Түрк', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h5 = InformaticaQuestions(
    text: 'Улуу Кыргыз Дөөлөтү  ...........кийин башталган',
    images: 'кыргыз_каганаты',
    jooptor: [
      InformaticaAnswer(text: 'Барсбек кагандын бийлигинен', isTrue: false),
      InformaticaAnswer(
          text: 'Ордо-балыкты кыргыздар басып алгандан', isTrue: false),
      InformaticaAnswer(
          text: '751-ж. Талас дарыясындагы согуштан', isTrue: false),
      InformaticaAnswer(
          text: 'Темучин-Чыңгыз хан деп жарыялангандан', isTrue: true),
    ]);
////////////////////////////////////////////////////////
List<InformaticaQuestions> historyQuestions = [h1, h2, h3, h4, h5];
