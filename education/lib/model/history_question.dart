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

// Рим империясы
const pimImperiasy1 = HistoryQuestions(
    text: 'Рим империясы деген эмне жана кайсыл жылдан бери жашап келген?',
    images: 'рим',
    jooptor: [
      HistoryAnswer(text: '400-жылдарда курулуп баштаган шаар', isTrue: false),
      HistoryAnswer(
          text:
              'Рим империясы биздин заманга чейинки 27-жылдан бери жашап келе жаткан байыркы мамлекет',
          isTrue: true),
      HistoryAnswer(text: 'Сактардын мамлекети', isTrue: false),
      HistoryAnswer(text: 'Француздардын колониясы болгон', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const pimImperiasy2 = HistoryQuestions(
    text: 'Октавиан деген ким болгон?',
    images: 'октавиан',
    jooptor: [
      HistoryAnswer(
          text: 'Римдин кулашын алдын алган согушкер баатыр', isTrue: false),
      HistoryAnswer(
          text: 'Август титулуна ээ болгон биринчи Рим императору',
          isTrue: true),
      HistoryAnswer(text: 'Варварлар жол баштоочусу болгон', isTrue: false),
      HistoryAnswer(text: 'Римдин мыйзамын толук жазган адам', isTrue: false),
    ]);
/////////////////////////////////////////////////////////
const pimImperiasy3 = HistoryQuestions(
    text: 'Рим империясы камтыган аймак',
    images: 'рим_империясынын_афмагы',
    jooptor: [
      HistoryAnswer(text: 'Африка', isTrue: false),
      HistoryAnswer(text: 'Чыгыш Азия жана Батыш Европа аймагы', isTrue: false),
      HistoryAnswer(
          text: 'Азия, Түндүк Америка, Түштүк Америка', isTrue: false),
      HistoryAnswer(
          text: 'Европа, Түндүк Африка, Жакынкы чыгыштын бир бөлүгү',
          isTrue: true),
    ]);
//////////////////////////////////////////////////////
const pimImperiasy4 = HistoryQuestions(
    text: 'Рим империясы кандай мурастары менен белгилүү болгон?',
    images: '19781236',
    jooptor: [
      HistoryAnswer(
          text: 'Ат чабуу, олимпиада оюндарын уюштуруу', isTrue: false),
      HistoryAnswer(text: 'Башка басып алууларды болтурбоо', isTrue: false),
      HistoryAnswer(
          text:
              'Мыйзамдар, инфраструктуралар, инженердик жетишкендиктер жана маданий',
          isTrue: true),
      HistoryAnswer(text: 'Боек, кийим жасоо', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const pimImperiasy5 = HistoryQuestions(
    text:
        'Рим империясы башка аймактарды ийгиликтүү басып алуусуна эмне түрткү болгон?',
    images: 'pimImperiasy5',
    jooptor: [
      HistoryAnswer(text: 'Кулдарды багып согушка салган', isTrue: false),
      HistoryAnswer(
          text: 'Башка императорлор Римге кошулгусу келген', isTrue: false),
      HistoryAnswer(
          text: 'Согушка жалаң дыйкандарын салып турган', isTrue: false),
      HistoryAnswer(
          text: 'Алардын аскерлери эң тартиптүү жана күчтүү армиясы болгон',
          isTrue: true),
    ]);
////////////////////////////////////////////////////////
const pimImperiasy6 = HistoryQuestions(
    text: 'Рим империясынын ыдырашына кандай көйгөйлөр түрткү болгон?',
    images: 'pimImperiasy6',
    jooptor: [
      HistoryAnswer(
          text:
              'Ички чыр-чатактар, саясий интригалар, экономикалык кыйынчылыктар жана варварлар урууларынын чабуулдары',
          isTrue: true),
      HistoryAnswer(text: 'Римдиктер жерлерин таштап кеткен', isTrue: false),
      HistoryAnswer(
          text: 'Буудай айдоолору күйүп элдин ачка калуусу себеп болгон',
          isTrue: false),
      HistoryAnswer(
          text: 'Алардын армиясы өздөрүнүн элине кол салган', isTrue: false),
    ]);
////////////////////////////////////////////////////////
const pimImperiasy7 = HistoryQuestions(
    text: 'Цицерон, Вирджил, Овид жана Тацит булар ким болгон?',
    images: 'pimImperiasy7',
    jooptor: [
      HistoryAnswer(text: 'Согуш стратегияларын түзгөн', isTrue: false),
      HistoryAnswer(
          text:
              'Рим жазуучулары, тарых, философия,поезия жана риторикаларды жаратышкан',
          isTrue: true),
      HistoryAnswer(text: 'Кулдардын насаатчылары болгон', isTrue: false),
      HistoryAnswer(
          text: 'Жогорку саясий башчыларынын каршылаштары болгон',
          isTrue: false),
    ]);
////////////////////////////////////////////////////////

List<HistoryQuestions> pimImperiasy = [
  pimImperiasy1,
  pimImperiasy2,
  pimImperiasy3,
  pimImperiasy4,
  pimImperiasy5,
  pimImperiasy6,
  pimImperiasy7,
];

// Байыркы Германдыктар
const bairkyGermandyktar1 = HistoryQuestions(
    text:
        'Байыркы немистердин биздин заманга чейинки кайсы жылдардан бери келген?',
    images: 'ьайыркы_германдыктар_кайсыл_топко_кирген',
    jooptor: [
      HistoryAnswer(text: '2000 жылдыкта', isTrue: true),
      HistoryAnswer(text: '4000 жылдыкта', isTrue: false),
      HistoryAnswer(text: '3200 жылдыкта', isTrue: false),
      HistoryAnswer(text: '1000 жылдыкта', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const bairkyGermandyktar2 = HistoryQuestions(
    text: 'Байыркы немистер кайсыл чоң топко кирген?',
    images: 'байыркы_германдыктар',
    jooptor: [
      HistoryAnswer(
          text: 'Байыркы Римден бөлүнүп чыккан эл болгон', isTrue: false),
      HistoryAnswer(text: 'Монголоид тегинен болушкан', isTrue: false),
      HistoryAnswer(text: 'Варварлар уруусунан болушкан', isTrue: false),
      HistoryAnswer(text: 'Индоевропа элинин чоң тобуна кирген', isTrue: true),
    ]);
/////////////////////////////////////////////////////////
const bairkyGermandyktar3 = HistoryQuestions(
    text: 'Байыркы немистер байырлаган аймактар',
    images: 'экономика_др_германцев',
    jooptor: [
      HistoryAnswer(text: 'азыркы Канада, Иран, Ирак', isTrue: false),
      HistoryAnswer(
          text: 'Германия, Голландия, Дания, Швеция, Норвегия', isTrue: true),
      HistoryAnswer(text: 'Африка континенти', isTrue: false),
      HistoryAnswer(text: 'Испания,Португалия, Ливан, Италия', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const bairkyGermandyktar4 = HistoryQuestions(
    text:
        'Немистер Римдиктер менен Тевтобург токойундагы салгылашууда немистердин лидери ким болгон?',
    images: 'тевдовург_токойу',
    jooptor: [
      HistoryAnswer(text: 'Арпия', isTrue: false),
      HistoryAnswer(text: 'Валам', isTrue: false),
      HistoryAnswer(text: 'Арминиус', isTrue: true),
      HistoryAnswer(text: 'Ариовист', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const bairkyGermandyktar5 = HistoryQuestions(
    text: 'Байыркы немистердин экономикасынын негизгисин эмнелер түзгөн?',
    images: 'ьайыркы_германдыктар_кайсыл_топко_кирген',
    jooptor: [
      HistoryAnswer(text: 'Алтын жана күмүш казуу', isTrue: false),
      HistoryAnswer(text: 'Римдиктерге куралдарды жасап берүү', isTrue: false),
      HistoryAnswer(text: 'Балык уулоо жолу гана', isTrue: false),
      HistoryAnswer(text: 'Дыйканчылык, малчылык, кол өнөрчүлүк', isTrue: true),
    ]);
////////////////////////////////////////////////////////
const bairkyGermandyktar6 = HistoryQuestions(
    text:
        'Батыш Рим империясынын аймагына немис уруулары кайсыл кылымдарда кол сала баштаган?',
    images: 'тевдовург_токойу',
    jooptor: [
      HistoryAnswer(text: 'Биздин замандын V кылымында', isTrue: true),
      HistoryAnswer(text: 'Биздин замандын 2 кылымында', isTrue: false),
      HistoryAnswer(text: 'Биздин заманга чейин 2000 жылдыкта', isTrue: false),
      HistoryAnswer(text: 'Биздин замандын 3 кылымында', isTrue: false),
    ]);
////////////////////////////////////////////////////////
const bairkyGermandyktar7 = HistoryQuestions(
    text:
        'Биздин замандын 9-жылы Рим императору Августка кайсы герман лидери каршылык көрсөткөн?',
    images: 'немисте_байырлаган_аймактар',
    jooptor: [
      HistoryAnswer(text: 'Германий', isTrue: false),
      HistoryAnswer(text: 'Тевтобург', isTrue: false),
      HistoryAnswer(text: 'Варус', isTrue: false),
      HistoryAnswer(text: 'Арминий', isTrue: true),
    ]);
////////////////////////////////////////////////////////

const bairkyGermandyktar8 = HistoryQuestions(
    text:
        'Кайсы герман эли темир согуу жана соода өнөрү менен белгилүү болгон?',
    images: 'герман_айылы',
    jooptor: [
      HistoryAnswer(text: 'Тевтондор', isTrue: true),
      HistoryAnswer(text: 'Свевдер', isTrue: false),
      HistoryAnswer(text: 'Лангобардтар', isTrue: false),
      HistoryAnswer(text: 'Херусктар', isTrue: false),
    ]);
////////////////////////////////////////////////////////

const bairkyGermandyktar9 = HistoryQuestions(
    text:
        'Кайсы герман тайпасы өзүнүн деңиздеги чеберчилиги жана дирижабльдары менен белгилүү болгон?',
    images: 'байыркы_германдыктар',
    jooptor: [
      HistoryAnswer(text: 'Аламандар', isTrue: false),
      HistoryAnswer(text: 'Вестготтор', isTrue: false),
      HistoryAnswer(text: 'Ютландтар', isTrue: true),
      HistoryAnswer(text: 'Саксондор', isTrue: false),
    ]);
////////////////////////////////////////////////////////

List<HistoryQuestions> bairkyGermandyktar = [
  bairkyGermandyktar1,
  bairkyGermandyktar2,
  bairkyGermandyktar3,
  bairkyGermandyktar4,
  bairkyGermandyktar5,
  bairkyGermandyktar6,
  bairkyGermandyktar7,
  bairkyGermandyktar8,
  bairkyGermandyktar9,
];

// Италия 5 - 10 кылым аралыгы
const italia1 = HistoryQuestions(
    text:
        'Кайра жаралуу доорунда Италиянын кайсы шаар-мамлекети белгилүү соода жана маданият борборуна айланган?',
    images: 'и1',
    jooptor: [
      HistoryAnswer(text: 'Милан', isTrue: false),
      HistoryAnswer(text: 'Венеция', isTrue: false),
      HistoryAnswer(text: 'Рим', isTrue: false),
      HistoryAnswer(text: 'Флоренция', isTrue: true),
    ]);
//////////////////////////////////////////////////////
const italia2 = HistoryQuestions(
    text:
        '5-10 кылымдын башында Италияда кандай саясий өзгөрүүлөр болуп, көптөгөн майда мамлекеттерге, территорияларга бөлүнүүгө алып келди?',
    images: 'и2',
    jooptor: [
      HistoryAnswer(text: 'Италияда христиан динин кабыл алуу', isTrue: false),
      HistoryAnswer(
          text: 'Италиянын крест жортуулдарына катышуусу', isTrue: false),
      HistoryAnswer(
          text: 'Рим империясынын Италияны басып алуусу', isTrue: false),
      HistoryAnswer(
          text:
              'Острогот жана Византия падышалыктарынын, ошондой эле Ломбард падышалыгынын пайда болушу',
          isTrue: true),
    ]);
/////////////////////////////////////////////////////////
const italia3 = HistoryQuestions(
    text:
        'Кайсы кылымда Франк королу Карл Италиянын бөлүгүн басып алып Каролинг империясын курду?',
    images: 'и3',
    jooptor: [
      HistoryAnswer(text: 'XII-кылымда', isTrue: false),
      HistoryAnswer(text: 'VIII-кылымда', isTrue: true),
      HistoryAnswer(text: 'V-кылымда', isTrue: false),
      HistoryAnswer(text: 'VII-кылымда', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const italia4 = HistoryQuestions(
    text: 'Карл Италияда анын тушунда кандай реформаларды жүргүзгөн?',
    images: 'и4',
    jooptor: [
      HistoryAnswer(
          text: 'Билим берүү, сот жана чиркөө уюмдарында реформалар',
          isTrue: true),
      HistoryAnswer(
          text:
              'Экономика, аскердик система жана соода тармагындагы реформалар',
          isTrue: false),
      HistoryAnswer(
          text: 'Айыл чарбасында жана инфраструктурада реформалар',
          isTrue: false),
      HistoryAnswer(text: 'Салык жана соода реформалары', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const italia5 = HistoryQuestions(
    text:
        'Кайсы кылымда Италия Тоскан Маркграфтары жана Сполето графтары сыяктуу ар кандай феодалдык башкаруучулар менен күчтүү үй-бүлөлөрдүн ортосунда күрөш болгон?',
    images: 'и5',
    jooptor: [
      HistoryAnswer(text: 'В 6 веке', isTrue: false),
      HistoryAnswer(text: 'В 12 веке', isTrue: false),
      HistoryAnswer(text: 'В 16 веке', isTrue: false),
      HistoryAnswer(text: 'В 9 веке', isTrue: true),
    ]);
////////////////////////////////////////////////////////
const italia6 = HistoryQuestions(
    text:
        '10-кылымда Италиянын саясий жана экономикалык турмушунда кайсы шаар-мамлекеттер маанилүү роль ойной баштаган?',
    images: 'и6',
    jooptor: [
      HistoryAnswer(text: 'Пиза, Турин и Болонья', isTrue: false),
      HistoryAnswer(text: 'Рим, Милан жана Неаполь', isTrue: false),
      HistoryAnswer(text: 'Флоренция, Венеция жана Генуя', isTrue: true),
      HistoryAnswer(text: 'Мадрид, Париж и Лондон', isTrue: false),
    ]);
////////////////////////////////////////////////////////
const italia7 = HistoryQuestions(
    text:
        'Кайсы шаар-мамлекеттер Италияда искусствонун, архитектуранын жана Ренессанс искусствосунун борборлору болуп калды?',
    images: 'и7',
    jooptor: [
      HistoryAnswer(text: 'Париж, Лондон жана Мадрид', isTrue: false),
      HistoryAnswer(text: 'Венеция, Генуя жана Турин', isTrue: false),
      HistoryAnswer(text: 'Рим, Милан жана Неаполь', isTrue: false),
      HistoryAnswer(text: 'Флоренция, Пиза жана Сиена', isTrue: true),
    ]);
////////////////////////////////////////////////////////

const italia8 = HistoryQuestions(
    text: 'Чыгыш менен Батышты байланыштырган соода?',
    images: 'и8',
    jooptor: [
      HistoryAnswer(text: 'Неаполь жана Турин', isTrue: false),
      HistoryAnswer(text: 'Венеция жана Генуя', isTrue: true),
      HistoryAnswer(text: 'Рим жана Милан', isTrue: false),
      HistoryAnswer(text: 'Флоренция жана Пиза', isTrue: false),
    ]);
////////////////////////////////////////////////////////

const italia9 = HistoryQuestions(
    text:
        'Бул мезгилде Италиянын биримдигин жана стабилдүүлүгүн кандай факторлор начарлатты?',
    images: 'и9',
    jooptor: [
      HistoryAnswer(text: 'Табигый кырсыктар', isTrue: false),
      HistoryAnswer(text: 'Экономикалык мүчүлүштүктөр', isTrue: false),
      HistoryAnswer(
          text:
              'Шаарлар менен мамлекеттер ортосундагы ички чыр-чатактарбчет элдик аскерлердин жана баскынчылардын таасири',
          isTrue: true),
      HistoryAnswer(
          text: 'маданий айырмачылыктар, диний талаш-тартыштар', isTrue: false),
    ]);
////////////////////////////////////////////////////////

const italia10 = HistoryQuestions(
    text:
        'X-кылымдын аягында Италиядагы бийлик үчүн күрөшкө кайсы мамлекеттер жана башкаруучулар катышкан?',
    images: 'и10',
    jooptor: [
      HistoryAnswer(
          text:
              'Норман Королдугу Түштүк Италия жана Сицилия, Папа мамлекеттери жана Германия императорлору',
          isTrue: true),
      HistoryAnswer(
          text: 'Француз королдору жана англис ханышалары', isTrue: false),
      HistoryAnswer(
          text: 'Монгол империясы жана Осмон султандары', isTrue: false),
      HistoryAnswer(
          text: 'Испан конкистадорлору жана инка императорлору', isTrue: false),
    ]);
////////////////////////////////////////////////////////
List<HistoryQuestions> italia = [
  italia1,
  italia2,
  italia3,
  italia4,
  italia5,
  italia6,
  italia7,
  italia8,
  italia9,
  italia10,
];

// Немис королдугу
const germania1 = HistoryQuestions(
    text: 'V-X кылымдарда Германиянын падышалыгы кандай шарттарда болгон?',
    images: 'г1',
    jooptor: [
      HistoryAnswer(
          text:
              'Германиянын падышалыгы бытыранды болгон жана ар кандай уруулардын жана варвар элдеринин болушу менен мүнөздөлгөн.',
          isTrue: true),
      HistoryAnswer(
          text:
              'Германия падышалыгы бирдиктүү жана борборлоштурулган эл болгон',
          isTrue: false),
      HistoryAnswer(
          text:
              'Бул мезгилде Германия толугу менен Рим империясынын таасиринде болгон.',
          isTrue: false),
      HistoryAnswer(text: 'Бул мезгилде Германдар жок эл болчу', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const germania2 = HistoryQuestions(
    text:
        'V-X-кылымдарда бөлүнгөн Германияда башкаруунун кандай формалары болгон?',
    images: 'г2',
    jooptor: [
      HistoryAnswer(text: 'ханзаадалар', isTrue: false),
      HistoryAnswer(text: 'Герцогдор', isTrue: true),
      HistoryAnswer(text: 'Вицеройлор', isTrue: false),
      HistoryAnswer(text: 'падышалар', isTrue: false),
    ]);
/////////////////////////////////////////////////////////
const germania3 = HistoryQuestions(
    text:
        'V-кылымда Ыйык Рим императорунун таажысын кийген саксондор династиясынын эң белгилүү падышаларынын бири ким болгон?',
    images: 'г3',
    jooptor: [
      HistoryAnswer(text: 'Фридрих I Барбаросса', isTrue: false),
      HistoryAnswer(text: 'Оттон I', isTrue: true),
      HistoryAnswer(text: 'Улуу Карл', isTrue: false),
      HistoryAnswer(text: 'Генрих IV', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const germania4 = HistoryQuestions(
    text:
        'Майнцтагы кайсы монастырь жазуу жана маданият жаралган жана тараган маанилүү борборго айланган?',
    images: 'г4',
    jooptor: [
      HistoryAnswer(text: 'Монастырь Сан-Лоренцо', isTrue: true),
      HistoryAnswer(text: 'Монастырь Святого Мартиниана', isTrue: false),
      HistoryAnswer(text: 'Монастырь Сан-Мигель', isTrue: false),
      HistoryAnswer(text: 'Монастырь Санта-Мария', isTrue: false),
    ]);
//////////////////////////////////////////////////////
const germania5 = HistoryQuestions(
    text:
        'Кайсы доордо герман королдугу бытыранды жана түрдүү, анын ичинде ар кандай герман уруулары жана варвар уруулары болгон?',
    images: 'г5',
    jooptor: [
      HistoryAnswer(text: 'Кайра жаралуу доорунда', isTrue: false),
      HistoryAnswer(text: '19-кылымда', isTrue: false),
      HistoryAnswer(text: 'Азыркы доордо', isTrue: false),
      HistoryAnswer(text: 'Алгачкы орто кылымдарда', isTrue: true),
    ]);
////////////////////////////////////////////////////////
const germania6 = HistoryQuestions(
    text:
        'Германия королдугунун бытырандылык мезгилиндеги герман урууларынын жана варвар урууларынын маданиятына кандай өзгөчөлүктөр мүнөздүү болгон?',
    images: 'г6',
    jooptor: [
      HistoryAnswer(
          text: 'Күчтүү борборлоштурулган мамлекет жана империя',
          isTrue: false),
      HistoryAnswer(text: 'Философиянын жана илимдин өнүгүшү', isTrue: false),
      HistoryAnswer(
          text: 'Бай адабий салт жана сүрөт искусствосу', isTrue: false),
      HistoryAnswer(
          text: 'Согуш өнөрүнө жана малчылыкка негизделген алгачкы маданият',
          isTrue: true),
    ]);
////////////////////////////////////////////////////////
const germania7 = HistoryQuestions(
    text:
        'Миссионерлердин, анын ичинде Сент-Бонифастын аркасында Германия падышачылыгында кандай диний таасир жайылган?',
    images: 'г7',
    jooptor: [
      HistoryAnswer(text: 'Христиандык', isTrue: true),
      HistoryAnswer(text: 'Ислам', isTrue: false),
      HistoryAnswer(text: 'Иудаизм', isTrue: false),
      HistoryAnswer(text: 'Паганизм', isTrue: false),
    ]);
////////////////////////////////////////////////////////

const germania8 = HistoryQuestions(
    text:
        'Биринчи Ыйык Рим императору жана 10-кылымда герман падышалыктарынын биригишине алып келген ким?',
    images: 'г8',
    jooptor: [
      HistoryAnswer(text: 'Улуу Карл', isTrue: false),
      HistoryAnswer(text: 'Оттон I', isTrue: true),
      HistoryAnswer(text: 'Фридрих I Барбаросса', isTrue: false),
      HistoryAnswer(text: 'Луис Бавария', isTrue: false),
    ]);
////////////////////////////////////////////////////////

const germania9 = HistoryQuestions(
    text:
        'Немис королдугунун тарыхында улуу герман падышалары жана императорлору кандай из калтырышкан?',
    images: 'г9',
    jooptor: [
      HistoryAnswer(
          text: 'Жаңы аймактарды ачуу жана басып алуу', isTrue: false),
      HistoryAnswer(
          text:
              'Германиянын маданиятына жана тарыхына олуттуу таасир тийгизген',
          isTrue: true),
      HistoryAnswer(
          text: 'Маданият менен искусствонун гүлдөп турган учуру',
          isTrue: false),
      HistoryAnswer(text: 'Саясий биримдик жана стабилдүүлүк', isTrue: false),
    ]);
////////////////////////////////////////////////////////
List<HistoryQuestions> germania = [
  germania1,
  germania2,
  germania3,
  germania4,
  germania5,
  germania6,
  germania7,
  germania8,
  germania9,
];
