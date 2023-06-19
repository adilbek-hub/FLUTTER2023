class UsaSuroo {
  const UsaSuroo(
      {required this.text, required this.jooptor, required this.image});
  final String text;
  final List<Joop> jooptor;
  final String image;
}

class Joop {
  const Joop({required this.text, required this.isBool});
  final String text;
  final bool isBool;
}

const u1 = UsaSuroo(
    text: 'Америкада канча штат бар?',
    jooptor: [
      Joop(text: '50', isBool: true),
      Joop(text: '51', isBool: false),
      Joop(text: '49', isBool: false),
      Joop(text: '63', isBool: false),
    ],
    image: 'state');
const u2 = UsaSuroo(
    text: 'АКШ кайсыл материкте орун алган?',
    jooptor: [
      Joop(text: 'Австралия', isBool: false),
      Joop(text: 'Евразия', isBool: false),
      Joop(text: 'Түндүк Америка', isBool: true),
      Joop(text: 'Түштүк Америка', isBool: false),
    ],
    image: 'flag_usa');

const u3 = UsaSuroo(
    text: 'Американын акча бирдиги?',
    jooptor: [
      Joop(text: 'Евро', isBool: false),
      Joop(text: 'АКШ доллары', isBool: true),
      Joop(text: 'Юань', isBool: false),
      Joop(text: 'Фунт', isBool: false),
    ],
    image: 'money_simbols');

const u4 = UsaSuroo(
    text: 'Аляска Американын кайсыл статусунда?',
    jooptor: [
      Joop(text: 'Штат', isBool: true),
      Joop(text: 'Федерация округу', isBool: false),
      Joop(text: 'Республика', isBool: false),
      Joop(text: 'Облус', isBool: false),
    ],
    image: 'alaska_state');

const u5 = UsaSuroo(
    text: 'Вермонт штатынын Административдик борбору?',
    jooptor: [
      Joop(text: 'Монпелье', isBool: true),
      Joop(text: 'Мадисон', isBool: false),
      Joop(text: 'Бойс', isBool: false),
      Joop(text: 'Монтгомери', isBool: false),
    ],
    image: 'viermont');

const u6 = UsaSuroo(
    text: 'Айдахо штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Де-Мойн', isBool: false),
      Joop(text: 'Олимпия', isBool: false),
      Joop(text: 'Жуно', isBool: false),
      Joop(text: 'Бойсе', isBool: true),
    ],
    image: 'boyse');

const u7 = UsaSuroo(
    text: 'Айова штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Мадисон', isBool: false),
      Joop(text: 'Де-Мойн', isBool: true),
      Joop(text: 'Атланта', isBool: false),
      Joop(text: 'Бойс', isBool: false),
    ],
    image: 'de_moyn');

const u8 = UsaSuroo(
    text: 'Алабама штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Сент-Пол', isBool: false),
      Joop(text: 'Де-Мойн', isBool: false),
      Joop(text: 'Монтгомери', isBool: true),
      Joop(text: 'Бойс', isBool: false),
    ],
    image: 'alabama');

const u9 = UsaSuroo(
    text: 'Аляска штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Сент-Пол', isBool: false),
      Joop(text: 'Де-Мойн', isBool: false),
      Joop(text: 'Монтгомери', isBool: false),
      Joop(text: 'Жуно', isBool: true),
    ],
    image: 'eefb8a268f18f7ae87899d4ad03f1fd1');

const u10 = UsaSuroo(
    text: 'Аризона штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Сент-Пол', isBool: false),
      Joop(text: 'Финикс', isBool: true),
      Joop(text: 'Монтгомери', isBool: false),
      Joop(text: 'Жуно', isBool: false),
    ],
    image: 'arizona');

const u11 = UsaSuroo(
    text: 'Арканзас штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Сент-Пол', isBool: false),
      Joop(text: 'Финикс', isBool: false),
      Joop(text: 'Литл-Рок', isBool: true),
      Joop(text: 'Жуно', isBool: false),
    ],
    image: 'Doubletree-By-Hilton-Little-Rock-Hotel-Exterior');

const u12 = UsaSuroo(
    text: 'Батыш Виргиния штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Чарлстон', isBool: true),
      Joop(text: 'Финикс', isBool: false),
      Joop(text: 'Литл-Рок', isBool: false),
      Joop(text: 'Жуно', isBool: false),
    ],
    image: 'Top-Attractions-to-Experience-in-Charleston-SC-2');

const u13 = UsaSuroo(
    text: 'Вайоминг штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Гонолулу', isBool: false),
      Joop(text: 'Ричмонд', isBool: false),
      Joop(text: 'Монтпильер', isBool: false),
      Joop(text: 'Шайенн', isBool: true),
    ],
    image: 'state');

const u14 = UsaSuroo(
    text: 'Вашингтон штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Франкфорт', isBool: false),
      Joop(text: 'Денвер', isBool: false),
      Joop(text: 'Жексон', isBool: false),
      Joop(text: 'Олимпия', isBool: true),
    ],
    image: '1200px-White_House_Washington');

const u15 = UsaSuroo(
    text: 'Вермонт штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Олимпия', isBool: false),
      Joop(text: 'Монтпильер', isBool: true),
      Joop(text: 'Сакраменто', isBool: false),
      Joop(text: 'Денвер', isBool: false),
    ],
    image: 'MainStMontpelier');

const u16 = UsaSuroo(
    text: 'Виржиния штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Индианаполис', isBool: false),
      Joop(text: 'Спрингфилт', isBool: false),
      Joop(text: 'Атланта', isBool: false),
      Joop(text: 'Ричмонд', isBool: true),
    ],
    image: 'richmond');

const u17 = UsaSuroo(
    text: 'Висконсин штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Мадисон', isBool: true),
      Joop(text: 'Харрисберг', isBool: false),
      Joop(text: 'Сейлем', isBool: false),
      Joop(text: 'Роли', isBool: false),
    ],
    image: 'madison');

const u18 = UsaSuroo(
    text: 'Гавайи штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Батон-Руж', isBool: false),
      Joop(text: 'Хартфорд', isBool: false),
      Joop(text: 'Гонолулу', isBool: true),
      Joop(text: 'Лансинг', isBool: false),
    ],
    image: 'gonolulu');

const u19 = UsaSuroo(
    text: 'Жоржия штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Спрингфилт', isBool: false),
      Joop(text: 'Топика', isBool: false),
      Joop(text: 'Атланта', isBool: true),
      Joop(text: 'Франкфорт', isBool: false),
    ],
    image: '190_Atlanta,_GA');

const u20 = UsaSuroo(
    text: 'Делавер штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Батон-Руж', isBool: false),
      Joop(text: 'Довер', isBool: true),
      Joop(text: 'Индианаполис', isBool: false),
      Joop(text: 'Хелина', isBool: false),
    ],
    image: '03');

const u21 = UsaSuroo(
    text: 'Иллинойс штатынын административдик борбору?',
    jooptor: [
      Joop(text: 'Спрингфилд', isBool: true),
      Joop(text: 'Огаста', isBool: false),
      Joop(text: 'Жефферсон-Сити', isBool: false),
      Joop(text: 'Лансинг', isBool: false),
    ],
    image: 'istoriya-chikago-cover');

const u22 = UsaSuroo(
    text: 'АКШнын Конституциясынын кабыл алынган жылы?',
    jooptor: [
      Joop(text: '1800-ж. 5-июнь', isBool: false),
      Joop(text: '1732-ж. 10-март', isBool: false),
      Joop(text: '1787-ж. 17-сентябрь', isBool: true),
      Joop(text: '1930-ж. 30-декабрь', isBool: false),
    ],
    image: 'constitution');

const u23 = UsaSuroo(
    text: 'Конгресс деген эмне?',
    jooptor: [
      Joop(text: 'МЧБ жогорку органы', isBool: true),
      Joop(text: 'Штаттын Администрация', isBool: false),
      Joop(text: 'Эркиндик статуясын кароочу орган', isBool: false),
      Joop(text: 'Музей башчысы', isBool: false),
    ],
    image: 'congress');

const u24 = UsaSuroo(
    text: 'Эң чоң штат?',
    jooptor: [
      Joop(text: 'Жоржия', isBool: false),
      Joop(text: 'Алабама', isBool: false),
      Joop(text: 'Аляска', isBool: true),
      Joop(text: 'Колумбия', isBool: false),
    ],
    image: 'state');

const u25 = UsaSuroo(
    text: 'Мак-Кинли чокусу кайсыл штаттын кырка тоолоруда?',
    jooptor: [
      Joop(text: 'Аляска', isBool: true),
      Joop(text: 'Юта', isBool: false),
      Joop(text: 'Теннеси', isBool: false),
      Joop(text: 'Техас', isBool: false),
    ],
    image: 'mack_cinli');

const u26 = UsaSuroo(
    text: 'Ажал өрөөнүнүн деңиз деңгээлинен төмөн жайгашкан жери',
    jooptor: [
      Joop(text: '93 метр', isBool: false),
      Joop(text: '117 метр', isBool: false),
      Joop(text: '86 метр', isBool: true),
      Joop(text: '15 метр', isBool: false),
    ],
    image: '842_88963');
List<UsaSuroo> usaSuroo = [
  u1,
  u2,
  u3,
  u4,
  u5,
  u6,
  u7,
  u8,
  u9,
  u10,
  u11,
  u12,
  u13,
  u14,
  u15,
  u16,
  u17,
  u18,
  u19,
  u20,
  u21,
  u22,
  u23,
  u24,
  u25,
  u26,
];
