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

const Biology b1 = Biology(
  name: 'Теринин  кайсы болугу  сездиргич  болуп саналат?',
  image: 'тери',
  jooptor: [
    BiologyJoop(name: 'Кан тамырлар', tuuraJoop: false),
    BiologyJoop(name: 'Рецептор', tuuraJoop: true),
    BiologyJoop(name: 'Булчун тыканы', tuuraJoop: false),
    BiologyJoop(name: 'Булчун', tuuraJoop: false),
  ],
);
///////////////////////////////////////////////////
const Biology b2 = Biology(
  name: 'Эпидермис .........жайланышкан',
  image: 'эпидермис',
  jooptor: [
    BiologyJoop(name: 'Теринин устундо', tuuraJoop: true),
    BiologyJoop(name: 'Теринин астында', tuuraJoop: false),
    BiologyJoop(name: 'Тери менен этченин ортосунда', tuuraJoop: false),
    BiologyJoop(name: 'Тери менен кандын ортосунда', tuuraJoop: false),
  ],
);
//////////////////////////////////////////////////
const Biology b3 = Biology(
  name: 'Кишиде тер болуп чыгаруу',
  image: 'тери_бөлүп_чыгаруу',
  jooptor: [
    BiologyJoop(name: 'Ысыкта гана журот', tuuraJoop: false),
    BiologyJoop(name: 'Физикалык жумуш кылганда', tuuraJoop: false),
    BiologyJoop(name: 'Дайыма журот', tuuraJoop: true),
    BiologyJoop(name: 'Дайыма журбөйт кээде гана', tuuraJoop: false),
  ],
);
////////////////////////////////////////////////
List<Biology> surooJoop = [b1, b2, b3];
