class Biology {
  const Biology(
      {required this.name, required this.image, required this.jooptor});
  final String name;
  final String image;
  final List<BiologyJoop> jooptor;
}

class BiologyJoop {
  const BiologyJoop({required this.name, required this.tuuraJoop});
  final String name;
  final bool tuuraJoop;
}

//Кишинин сүт эмүүчү жаныбар менен окшоштугу
Biology adamJanybar1 = const Biology(
  name: 'Кишинин сүт эмүүчү жаныбардан айырмасы?',
  image: 'тери',
  jooptor: [
    BiologyJoop(
        name:
            'Өлчөмү: Адамдын көлөмү башка сүт эмүүчүлөрдөн өзгөчө айырмаланбайт.',
        tuuraJoop: false),
    BiologyJoop(
        name:
            'Адамдын уникалдуу анатомиялык өзгөчөлүгү бар, тик туруу, чоң мээнин өнүгүшү',
        tuuraJoop: true),
    BiologyJoop(
        name:
            'Чач: Чачтын болушу адамдарды башка сүт эмүүчүлөрдөн айырмалай албайт, анткени алардын көбүнүн чачы да бар.',
        tuuraJoop: false),
    BiologyJoop(
        name:
            'Тери: жүнүнүн жетишсиздиги адамдардын өзгөчө бир өзгөчөлүгү эмес, анткени көпчүлүк сүт эмүүчүлөрдүн жүндөрү жок.',
        tuuraJoop: false),
  ],
);
///////////////////////////////////////////////////
Biology adamJanybar2 = const Biology(
  name: 'Сүт эмүүчүлөрдүн денеси кандай системалардан турат?',
  image: 'эпидермис',
  jooptor: [
    BiologyJoop(
        name: 'Нерв, кан айлануу, дем алуу жана тамак сиңирүү',
        tuuraJoop: true),
    BiologyJoop(
        name: 'Булчуң, сөөк, эндокриндик жана репродуктивдүү',
        tuuraJoop: false),
    BiologyJoop(
        name: 'бөлүп чыгаруучу, иммундук, дем алуу жана кан айлануу',
        tuuraJoop: false),
    BiologyJoop(
        name: 'Тери, лимфа, эндокриндик жана тамак сиңирүү', tuuraJoop: false),
  ],
);
//////////////////////////////////////////////////
Biology adamJanybar3 = const Biology(
  name: 'Адамдардын кайсы анатомиялык өзгөчөлүгү уникалдуу?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Большой мозг', tuuraJoop: false),
    BiologyJoop(name: 'бипедализм', tuuraJoop: false),
    BiologyJoop(name: 'куралдарды колдонуу', tuuraJoop: false),
    BiologyJoop(name: 'Жогоруда айтылгандардын баары', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology adamJanybar4 = const Biology(
  name: 'Адамдын эмчек сүтү башка сүт эмүүчүлөрдөн эмнеси менен айырмаланат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(
        name: 'Балдарды багуу үчүн адам сүт чыгарбайт', tuuraJoop: false),
    BiologyJoop(
        name:
            'Адамдын эмчек эмизүүсү социалдык жана маданий жактан көбүрөөк уюштурулган',
        tuuraJoop: true),
    BiologyJoop(name: 'Эркек балдарын сүт менен бакпайт', tuuraJoop: false),
    BiologyJoop(
        name:
            'Адамдардын сүт менен тамактануусу башка сүт эмүүчүлөрдөн эч айырмаланбайт.',
        tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology adamJanybar5 = const Biology(
  name:
      'Сүт эмүүчүлөр менен адамдарда курчап турган дүйнөнү үйрөнүү, жаттоо жана кабылдоо жөндөмүн эмне камсыз кылат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Өнүккөн нерв системасы', tuuraJoop: true),
    BiologyJoop(name: 'Диетадагы атаандаштыктын жоктугу', tuuraJoop: false),
    BiologyJoop(
        name: 'Высокий уровень физической активности', tuuraJoop: false),
    BiologyJoop(name: 'Узак уйку', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology b3 = const Biology(
  name: 'Адамдардын акылынын жана жүрүм-турумунун өзгөчөлүгү эмнеде?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(
        name: 'Татаал социалдык өз ара аракеттенүүнү өнүктүрүү',
        tuuraJoop: false),
    BiologyJoop(name: 'Тил жана маданият', tuuraJoop: false),
    BiologyJoop(
        name: 'Абстрактуу ой жүгүртүү жана чыгармачылык', tuuraJoop: false),
    BiologyJoop(name: 'Жогоруда айтылгандардын баары', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology adamJanybar6 = const Biology(
  name:
      'Сүт эмүүчүлөрдүн жана адамдардын ар кандай чөйрөгө жана шарттарга ыңгайлашуусуна мүмкүндүк берген кандай жөндөмдөр бар?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Экологиялык пластикалык', tuuraJoop: true),
    BiologyJoop(name: 'Өнүккөн физикалык өзгөчөлүктөрү', tuuraJoop: false),
    BiologyJoop(name: 'Теринин түсүн өзгөртүү мүмкүнчүлүгү', tuuraJoop: false),
    BiologyJoop(name: 'Канаттардын болушу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology adamJanybar7 = const Biology(
  name:
      'Сүт эмүүчүлөрдүн жана адамдардын ар кандай чөйрөгө жана шарттарга ыңгайлашуусуна мүмкүндүк берген кандай жөндөмдөр бар?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Экологиялык пластикалык', tuuraJoop: true),
    BiologyJoop(name: 'Өнүккөн физикалык өзгөчөлүктөрү', tuuraJoop: false),
    BiologyJoop(name: 'Теринин түсүн өзгөртүү мүмкүнчүлүгү', tuuraJoop: false),
    BiologyJoop(name: 'Канаттардын болушу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
List<Biology> adamJanybar = [
  adamJanybar1,
  adamJanybar2,
  adamJanybar3,
  adamJanybar4,
  adamJanybar5,
  adamJanybar6,
  adamJanybar7,
];

//клетка жөнүндө түшүнүк
Biology kletka1 = const Biology(
  name: 'Клетканы курчап турган жана аны тышкы чөйрөдөн эмне бөлүп турат?',
  image: 'тери',
  jooptor: [
    BiologyJoop(name: 'Ядро', tuuraJoop: false),
    BiologyJoop(name: 'Митохондрия', tuuraJoop: false),
    BiologyJoop(name: 'Цитоплазма', tuuraJoop: false),
    BiologyJoop(name: 'Мембрана', tuuraJoop: true),
  ],
);
///////////////////////////////////////////////////
Biology kletka2 = const Biology(
  name:
      'Ядро менен клетка кабыкчасынын ортосундагы мейкиндикти кайсы зат толтурат?',
  image: 'эпидермис',
  jooptor: [
    BiologyJoop(name: 'Цитоплазма', tuuraJoop: true),
    BiologyJoop(name: 'Генетикалык маалымат', tuuraJoop: false),
    BiologyJoop(name: 'Эндоплазматикалык сеть', tuuraJoop: false),
    BiologyJoop(name: 'Гольджи', tuuraJoop: false),
  ],
);
//////////////////////////////////////////////////
Biology kletka3 = const Biology(
  name: 'Клеткадагы энергияны өндүрүүдө кайсы органоид иштейт?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Митохондрия', tuuraJoop: true),
    BiologyJoop(name: 'Гольджи', tuuraJoop: false),
    BiologyJoop(name: 'Лизосома', tuuraJoop: false),
    BiologyJoop(name: 'Ядро', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka4 = const Biology(
  name: 'Белок синтезин кайсы органелл аткарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Митохондрия', tuuraJoop: false),
    BiologyJoop(name: 'Гольджи', tuuraJoop: true),
    BiologyJoop(name: 'Цитоплазма', tuuraJoop: false),
    BiologyJoop(name: 'Ядро', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka5 = const Biology(
  name: 'Клетканын бөлүнүү процесси эмне деп аталат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Митоз', tuuraJoop: true),
    BiologyJoop(name: 'Метаболизм', tuuraJoop: false),
    BiologyJoop(name: 'Митохондрия', tuuraJoop: false),
    BiologyJoop(name: 'Мембрана', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka6 = const Biology(
  name: 'Клеткалар айлана-чөйрө менен эмне кылат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Белокторду синтездейт', tuuraJoop: false),
    BiologyJoop(name: 'Тукум', tuuraJoop: false),
    BiologyJoop(
        name: 'Азык заттарды сиңирип, калдыктарды сыртка чыгарат',
        tuuraJoop: true),
    BiologyJoop(name: 'Энергия өндүрүү', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka7 = const Biology(
  name: 'Клетка ядросундагы генетикалык маалымат кайсы молекулада бар?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'РНК (рибонуклеин кислотасы)', tuuraJoop: false),
    BiologyJoop(name: 'Глюкоза', tuuraJoop: false),
    BiologyJoop(name: 'ДНК (дезоксирибонуклеин кислотасы)', tuuraJoop: true),
    BiologyJoop(name: 'Липиддер', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka8 = const Biology(
  name: 'Клеткадагы генетикалык маалыматты эмне аныктайт?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Көздүн түсү', tuuraJoop: false),
    BiologyJoop(name: 'Органдын функциялары', tuuraJoop: true),
    BiologyJoop(name: 'Клетка өлчөмү', tuuraJoop: false),
    BiologyJoop(name: 'Дене жашы', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka9 = const Biology(
  name: 'ДНК молекуласында нуклеотиддердин ырааттуулугу катары эмне сакталат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Белоктор', tuuraJoop: false),
    BiologyJoop(name: 'Суу', tuuraJoop: true),
    BiologyJoop(name: 'Глюкоза', tuuraJoop: false),
    BiologyJoop(name: 'Генетикалык маалымат', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka10 = const Biology(
  name:
      'Генетикалык маалыматтын бир муундан экинчи муунга өтүшү эмне деп аталат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Метаболизм', tuuraJoop: false),
    BiologyJoop(name: 'Репродукция', tuuraJoop: false),
    BiologyJoop(name: 'Фотосинтез', tuuraJoop: false),
    BiologyJoop(name: 'Генетикалык берүү', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology kletka11 = const Biology(
  name: 'Организмдердин өсүп-өнүгүшүнүн негизи эмнеде?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Фотосинтез', tuuraJoop: false),
    BiologyJoop(name: 'Зат алмашуу', tuuraJoop: false),
    BiologyJoop(name: 'Митоз', tuuraJoop: true),
    BiologyJoop(name: 'Метаболизм', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka12 = const Biology(
  name: 'Кайсы органоид молекулаларды иштетүү жана таңгактоо үчүн жооптуу?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Митохондрия', tuuraJoop: false),
    BiologyJoop(name: 'Гольджтар', tuuraJoop: true),
    BiologyJoop(name: 'Лизосома', tuuraJoop: false),
    BiologyJoop(name: 'Эндоплазмалык сеть', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka13 = const Biology(
  name: 'Митохондрия клеткада эмнени жаратат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Энергияны', tuuraJoop: true),
    BiologyJoop(name: 'Белокторду', tuuraJoop: false),
    BiologyJoop(name: 'Сууну', tuuraJoop: false),
    BiologyJoop(name: 'Көмүр кычкыл газын', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology kletka14 = const Biology(
  name: 'Клетка функцияларын кайсы органелл башкарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Митохондрия', tuuraJoop: false),
    BiologyJoop(name: 'Гольджтор', tuuraJoop: false),
    BiologyJoop(name: 'Ядро', tuuraJoop: true),
    BiologyJoop(name: 'Лизосома', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
List<Biology> kletka = [
  kletka1,
  kletka2,
  kletka3,
  kletka4,
  kletka5,
  kletka6,
  kletka7,
  kletka8,
  kletka9,
  kletka10,
  kletka11,
  kletka12,
  kletka13,
  kletka14,
];

//Нерв системасы
Biology nervSistemasy1 = const Biology(
  name:
      'Нерв системасынын кайсы системасы булчуңдарды координациялоо, эс тутум жана сезим сыяктуу негизги дене функцияларын башкарат?',
  image: 'тери',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Парасимпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Борбордук нерв системасы', tuuraJoop: true),
    BiologyJoop(name: 'Перифериялык нерв системасы', tuuraJoop: false),
  ],
);
///////////////////////////////////////////////////
Biology nervSistemasy2 = const Biology(
  name: 'Жүлүн каналынын ичинде нерв системасынын кайсы бөлүгү өтөт?',
  image: 'эпидермис',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'парасимпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'борбордук нерв системасы', tuuraJoop: true),
    BiologyJoop(name: 'Перифериялык нерв системасы', tuuraJoop: false),
  ],
);
//////////////////////////////////////////////////
Biology nervSistemasy3 = const Biology(
  name:
      'Организмдин жүрөктүн согушу, дем алуу сыяктуу автоматтык функциялары нерв системасынын кайсы системасы үчүн жооп берет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'парасимпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'борбордук нерв системасы', tuuraJoop: false),
    BiologyJoop(name: 'Перифериялык нерв системасы', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy4 = const Biology(
  name:
      'Нерв системасынын кайсы системасы аң-сезимдүү кыймылдарга жана рецепторлордон борбордук нерв системасына маалыматтын берилишине жооп берет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Парасимпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Соматикалык нерв системасы', tuuraJoop: true),
    BiologyJoop(name: 'Автономдук нерв системасы', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy5 = const Biology(
  name: 'Борбордук нерв системасы эмнени камтыйт?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Баш мээ', tuuraJoop: true),
    BiologyJoop(name: 'Жүлүн', tuuraJoop: true),
    BiologyJoop(name: 'Мээден чыккан нервдер', tuuraJoop: false),
    BiologyJoop(name: 'Жүлүндөн чыккан нервдер', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy6 = const Biology(
  name: 'Нерв системасы кандай функцияларды аткарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Нерв импульстарынын берилиши', tuuraJoop: false),
    BiologyJoop(name: 'Маалыматтарды иштетүү', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(name: ' Жогоруда айтылгандардын баары', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy7 = const Biology(
  name:
      'Жүрөктүн согушун, дем алууну жана тамак сиңирүүнү жөнгө салууга нерв системасынын кайсы системасы жооп берет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Парасимпатикалык система', tuuraJoop: true),
    BiologyJoop(name: 'Борбордук нерв системасы', tuuraJoop: false),
    BiologyJoop(name: 'Перифериялык нерв системасы', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy8 = const Biology(
  name:
      'Нерв системасынын кайсы системасы стресске жана коркунучка жооп берет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: true),
    BiologyJoop(name: 'парасимпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Борбордук нерв системасы', tuuraJoop: false),
    BiologyJoop(name: 'Перифериялык нерв системасы', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy9 = const Biology(
  name:
      'Организмдин калыбына келтирүүчү жана эс алуу функциялары үчүн нерв системасынын кайсы системасы жооп берет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'парасимпатикалык система', tuuraJoop: true),
    BiologyJoop(name: 'Борбордук нерв системасы', tuuraJoop: false),
    BiologyJoop(name: 'Перифериялык нерв системасы', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy10 = const Biology(
  name:
      'Нерв системасынын кайсы бөлүгү мээ менен дененин калган бөлүгүнүн ортосунда сигналдарды өткөрүүгө жооптуу?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Баш мээ', tuuraJoop: false),
    BiologyJoop(name: 'Жүлүн', tuuraJoop: true),
    BiologyJoop(name: 'Симпатикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Парасимпатикалык система', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy11 = const Biology(
  name: 'Перифериялык нерв системасы кандай функцияларды аткарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(name: 'Маалыматтарды иштетүү', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(
        name: 'Мээ менен дененин калган бөлүгүнүн ортосундагы сигнал',
        tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy12 = const Biology(
  name: 'Вегетатив нерв системасын кайсы системалар түзөт?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык жана парасимпатикалык', tuuraJoop: true),
    BiologyJoop(name: 'Борбордук жана перифериялык', tuuraJoop: true),
    BiologyJoop(name: 'Симпатикалык жана соматикалык', tuuraJoop: false),
    BiologyJoop(name: 'Парасимпатикалык жана соматикалык', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy13 = const Biology(
  name: 'Соматикалык нерв системасы кандай функцияларды аткарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: true),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(
        name: 'Мээ менен дененин калган бөлүгүнүн ортосундагы сигнал',
        tuuraJoop: false),
    BiologyJoop(name: 'Стресске жана коркунучка жооп берүү', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy14 = const Biology(
  name: 'Вегетатив нерв системасы кандай функцияларды аткарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: true),
    BiologyJoop(
        name: 'Мээ менен дененин калган бөлүгүнүн ортосундагы сигнал',
        tuuraJoop: false),
    BiologyJoop(name: 'Стресске жана коркунучка жооп берүү', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology nervSistemasy15 = const Biology(
  name: 'Денедеги балансты сактоо үчүн кандай системалар өз ара аракеттенишет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Симпатикалык жана парасимпатикалык', tuuraJoop: true),
    BiologyJoop(name: 'Борбордук жана перифериялык', tuuraJoop: true),
    BiologyJoop(name: 'Симпатикалык жана соматикалык', tuuraJoop: false),
    BiologyJoop(name: 'Парасимпатикалык жана соматикалык', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
List<Biology> nervSistemasy = [
  nervSistemasy1,
  nervSistemasy2,
  nervSistemasy3,
  nervSistemasy4,
  nervSistemasy5,
  nervSistemasy6,
  nervSistemasy7,
  nervSistemasy8,
  nervSistemasy9,
  nervSistemasy10,
  nervSistemasy11,
  nervSistemasy12,
  nervSistemasy13,
  nervSistemasy14,
  nervSistemasy15,
];

//Мээ системасы
Biology mee1 = const Biology(
  name: 'Мээнин кайсы бөлүгү координация жана тең салмактуулук үчүн жооптуу?',
  image: 'тери',
  jooptor: [
    BiologyJoop(name: 'Баш мээ', tuuraJoop: false),
    BiologyJoop(name: 'Мээче', tuuraJoop: true),
    BiologyJoop(name: 'Орто мээ', tuuraJoop: false),
    BiologyJoop(name: 'Арткы мээ', tuuraJoop: false),
  ],
);
///////////////////////////////////////////////////
Biology mee2 = const Biology(
  name:
      'Аң-сезимди жана ойгонууну жөнгө салууда мээнин кайсы бөлүгү роль ойнойт?',
  image: 'эпидермис',
  jooptor: [
    BiologyJoop(name: 'Баш мээ', tuuraJoop: false),
    BiologyJoop(name: 'Мээче', tuuraJoop: false),
    BiologyJoop(name: 'Орто мээ', tuuraJoop: true),
    BiologyJoop(name: 'Арткы мээ', tuuraJoop: false),
  ],
);
//////////////////////////////////////////////////
Biology mee3 = const Biology(
  name:
      'Мээнин кайсы бөлүгү ички органдарды жана эмоцияларды жөнгө салууга катышат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Баш мээ', tuuraJoop: false),
    BiologyJoop(name: 'Мээче', tuuraJoop: false),
    BiologyJoop(name: 'Диенцефалон', tuuraJoop: true),
    BiologyJoop(name: 'Арткы мээ', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee4 = const Biology(
  name:
      'Мээнин кайсы бөлүгү дем ​​алуу жана жүрөктүн согушу сыяктуу негизги маанилүү функцияларды башкарат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Баш мээ', tuuraJoop: false),
    BiologyJoop(name: 'Мээче', tuuraJoop: false),
    BiologyJoop(name: 'Диенцефалон', tuuraJoop: false),
    BiologyJoop(name: 'Арткы мээ', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology mee5 = const Biology(
  name: 'Мээнин когнитивдик функциялары кандай функция менен байланыштуу?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(name: 'Маалыматтарды иштетүү', tuuraJoop: true),
    BiologyJoop(name: 'денени жөнгө салуу', tuuraJoop: false),
    BiologyJoop(name: 'Жүрүм-турумду башкаруу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee6 = const Biology(
  name: 'Кыймылды башкаруу функциясы кандай?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: true),
    BiologyJoop(name: 'Маалыматтарды иштетүү', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(name: 'Жүрүм-турумду башкаруу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee7 = const Biology(
  name: 'Организмди жөнгө салуу кандай функция менен байланыштуу?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(name: 'Маалыматтарды иштетүү', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: true),
    BiologyJoop(name: 'Жүрүм-турумду башкаруу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee8 = const Biology(
  name: 'Эмоциялардын кызматы кандай?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(
        name: 'Эмоциялар төмөнкү функцияларга кирбейт.', tuuraJoop: true),
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(name: 'Жүрүм-турумду башкаруу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee9 = const Biology(
  name: 'Жүрүм-турум функциясы кандай?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(name: 'Жүрүм-турумду башкаруу', tuuraJoop: true),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee10 = const Biology(
  name: 'Кайсы функция мейкиндиктеги багытты билдирет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Кыймылды координациялоо', tuuraJoop: false),
    BiologyJoop(name: 'Маалыматтарды иштетүү', tuuraJoop: false),
    BiologyJoop(
        name: 'Органдарды жана системаларды жөнгө салуу', tuuraJoop: false),
    BiologyJoop(name: 'Мейкиндиктеги ориентация', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology mee11 = const Biology(
  name:
      'Эмоциялардын калыптанышында, чагылдырылышында жана жөнгө салынышында мээнин кайсы бөлүгү маанилүү роль ойнойт?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Маңдай бөлүктөрү', tuuraJoop: false),
    BiologyJoop(name: 'Мээче', tuuraJoop: false),
    BiologyJoop(name: 'Лимбикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Арткы мээ', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
Biology mee12 = const Biology(
  name:
      'Көйгөйлөрдү чечүүгө жана чечим кабыл алууга мээнин кайсы бөлүгү катышат?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Маңдай бөлүктөрү', tuuraJoop: true),
    BiologyJoop(name: 'Мээче', tuuraJoop: true),
    BiologyJoop(name: 'Лимбикалык система', tuuraJoop: false),
    BiologyJoop(name: 'Арткы мээ', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee13 = const Biology(
  name: 'Мээнин кайсы бөлүгү визуалдык маалыматты иштетүүгө жооп берет?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Убактылуу лобдор', tuuraJoop: true),
    BiologyJoop(name: 'париеталдык лоб', tuuraJoop: false),
    BiologyJoop(name: 'Желке бөлүктөрү', tuuraJoop: false),
    BiologyJoop(name: 'Маңдай бөлүктөрү', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee14 = const Biology(
  name: 'Угуу маалыматын иштетүү үчүн мээнин кайсы бөлүгү жооптуу?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'убактылуу лоб', tuuraJoop: false),
    BiologyJoop(name: 'париеталдык лоб', tuuraJoop: true),
    BiologyJoop(name: 'Желке бөлүктөрү', tuuraJoop: false),
    BiologyJoop(name: 'Маңдай бөлүктөрү', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
Biology mee15 = const Biology(
  name:
      'Эстутумду калыптандырууда жана сактоодо мээнин кайсы бөлүгү маанилүү роль ойнойт?',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Убактылуу лобдор', tuuraJoop: false),
    BiologyJoop(name: 'Париеталдык лобдор', tuuraJoop: false),
    BiologyJoop(name: 'Желке бөлүктөрү', tuuraJoop: false),
    BiologyJoop(name: 'Гиппокамп', tuuraJoop: true),
  ],
);
////////////////////////////////////////////////
List<Biology> mee = [
  mee1,
  mee2,
  mee3,
  mee4,
  mee5,
  mee6,
  mee7,
  mee8,
  mee9,
  mee10,
  mee11,
  mee12,
  mee13,
  mee14,
  mee15,
];
