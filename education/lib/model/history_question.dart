class HistoryQuestions {
  final String text;
  final String images;
  final List<HistoryAnswer> jooptor;
  const HistoryQuestions({
    required this.text,
    required this.images,
    required this.jooptor,
  });
}

class HistoryAnswer {
  const HistoryAnswer({required this.text, required this.isTrue});
  final String text;
  final bool isTrue;
}

const h1 = HistoryQuestions(
    text: 'Петроглифтер Кыргызстандын аймагында качан пайда болгон?',
    images: 'петроглифтер',
    jooptor: [
      HistoryAnswer(text: 'б.з.ч. 40000-жылга жакын', isTrue: false),
      HistoryAnswer(text: 'б.з.ч. 30000-жылга жакын', isTrue: true),
      HistoryAnswer(text: 'б.з.ч. 10000-жылга жакын', isTrue: false),
      HistoryAnswer(text: 'б.з.ч. 25000-жылга жакын', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h2 = HistoryQuestions(
    text:
        'Тундүк кыргызстан толугу менен Россия империясынын курамына качан өткорүлгөн?',
    images: 'tunduk_kyrgyzdar',
    jooptor: [
      HistoryAnswer(text: '1861-1865', isTrue: false),
      HistoryAnswer(text: '1855-1868', isTrue: true),
      HistoryAnswer(text: '1862-1866', isTrue: false),
      HistoryAnswer(text: '1859-1864', isTrue: false),
    ]);
/////////////////////////////////////////////////////////
const h3 = HistoryQuestions(
    text:
        'Монголдордун эзүүсуно каршы кыргыздар менен туматтардын көтөрүлүшу болгон',
    images: 'монголдор_эзүүсү',
    jooptor: [
      HistoryAnswer(text: '1218', isTrue: false),
      HistoryAnswer(text: '1224', isTrue: true),
      HistoryAnswer(text: '1269', isTrue: false),
      HistoryAnswer(text: '1220', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h4 = HistoryQuestions(
    text:
        'VII-кылымдын башында байыркы Түрк мамлекетинин бири "Он ок "эли деп аталган .Бул кайсы кагандык болгон?',
    images: 'он_ок_эл',
    jooptor: [
      HistoryAnswer(text: 'Кыргыз', isTrue: false),
      HistoryAnswer(text: 'Батыш-Түрк', isTrue: false),
      HistoryAnswer(text: 'Түркөш', isTrue: true),
      HistoryAnswer(text: 'Чыгыш-Түрк', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h5 = HistoryQuestions(
    text: 'Улуу Кыргыз Дөөлөтү  ...........кийин башталган',
    images: 'кыргыз_каганаты',
    jooptor: [
      HistoryAnswer(text: 'Барсбек кагандын бийлигинен', isTrue: false),
      HistoryAnswer(
          text: 'Ордо-балыкты кыргыздар басып алгандан', isTrue: false),
      HistoryAnswer(text: '751-ж. Талас дарыясындагы согуштан', isTrue: false),
      HistoryAnswer(
          text: 'Темучин-Чыңгыз хан деп жарыялангандан', isTrue: true),
    ]);
////////////////////////////////////////////////////////
List<HistoryQuestions> historyQuestions = [h1, h2, h3, h4, h5];
