class HistoryQuestions {
  final String text;
  final String images;
  final List<Answer> jooptor;
  const HistoryQuestions({
    required this.text,
    required this.images,
    required this.jooptor,
  });
}

class Answer {
  const Answer({required this.text, required this.isTrue});
  final String text;
  final bool isTrue;
}

const h1 = HistoryQuestions(
    text: 'Петроглифтер Кыргызстандын аймагында качан пайда болгон?',
    images: 'петроглифтер',
    jooptor: [
      Answer(text: 'б.з.ч. 40000-жылга жакын', isTrue: false),
      Answer(text: 'б.з.ч. 30000-жылга жакын', isTrue: true),
      Answer(text: 'б.з.ч. 10000-жылга жакын', isTrue: false),
      Answer(text: 'б.з.ч. 25000-жылга жакын', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h2 = HistoryQuestions(
    text:
        'Тундүк кыргызстан толугу менен Россия империясынын курамына качан өткорүлгөн?',
    images: 'tunduk_kyrgyzdar',
    jooptor: [
      Answer(text: '1861-1865', isTrue: false),
      Answer(text: '1855-1868', isTrue: true),
      Answer(text: '1862-1866', isTrue: false),
      Answer(text: '1859-1864', isTrue: false),
    ]);
/////////////////////////////////////////////////////////
const h3 = HistoryQuestions(
    text:
        'Монголдордун эзүүсуно каршы кыргыздар менен туматтардын көтөрүлүшу болгон',
    images: 'монголдор_эзүүсү',
    jooptor: [
      Answer(text: '1218', isTrue: false),
      Answer(text: '1224', isTrue: true),
      Answer(text: '1269', isTrue: false),
      Answer(text: '1220', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h4 = HistoryQuestions(
    text:
        'VII-кылымдын башында байыркы Түрк мамлекетинин бири "Он ок "эли деп аталган .Бул кайсы кагандык болгон?',
    images: 'он_ок_эл',
    jooptor: [
      Answer(text: 'Кыргыз', isTrue: false),
      Answer(text: 'Батыш-Түрк', isTrue: false),
      Answer(text: 'Түркөш', isTrue: true),
      Answer(text: 'Чыгыш-Түрк', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const h5 = HistoryQuestions(
    text: 'Улуу Кыргыз Дөөлөтү  ...........кийин башталган',
    images: 'кыргыз_каганаты',
    jooptor: [
      Answer(text: 'Барсбек кагандын бийлигинен', isTrue: false),
      Answer(text: 'Ордо-балыкты кыргыздар басып алгандан', isTrue: false),
      Answer(text: '751-ж. Талас дарыясындагы согуштан', isTrue: false),
      Answer(text: 'Темучин-Чыңгыз хан деп жарыялангандан', isTrue: true),
    ]);
////////////////////////////////////////////////////////
List<HistoryQuestions> historyQuestions = [h1, h2, h3, h4, h5];
