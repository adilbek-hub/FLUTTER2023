import 'package:flutter/material.dart';

class City {
  String name;
  String country;
  String continent;

  City(this.name, this.country, this.continent);
}

class CityList extends StatefulWidget {
  const CityList({super.key});

  @override
  _CityListState createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  List<City> citiesA = [
    City('Amsterdam', 'Netherlands', 'Europe'),
    City('Athens', 'Greece', 'Europe'),
    City('Auckland', 'New Zealand', 'Oceania'),
  ];

  List<City> citiesB = [
    City('Berlin', 'Germany', 'Europe'),
    City('Barcelona', 'Spain', 'Europe'),
    City('Budapest', 'Hungary', 'Europe'),
  ];

  List<City> citiesC = [
    City('Chicago', 'United States', 'North America'),
    City('Cairo', 'Egypt', 'Africa'),
    City('Copenhagen', 'Denmark', 'Europe'),
  ];

  List<City> displayedCities = [];

  void displayCities(List<City> cities) {
    setState(() {
      displayedCities = cities;
    });
  }

  @override
  void initState() {
    super.initState();
    displayCities(citiesA);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City List'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  displayCities(citiesA);
                },
                child: Text('A'),
              ),
              ElevatedButton(
                onPressed: () {
                  displayCities(citiesB);
                },
                child: const Text('B'),
              ),
              ElevatedButton(
                onPressed: () {
                  displayCities(citiesC);
                },
                child: const Text('C'),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(width: 0.2, color: Colors.black),
            children: [
              const TableRow(children: [
                Text(
                  "Континент",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Өлкө",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Борбор шаарлар",
                  textScaleFactor: 1,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]),
              ...displayedCities.map((city) {
                return TableRow(children: [
                  Text(city.continent, textScaleFactor: 1),
                  Text(city.country, textScaleFactor: 1),
                  Text(city.name, textScaleFactor: 1),
                ]);
              }).toList(),
            ],
          ),
        ],
      ),
    );
  }
}

/*
import 'package:education/model/usa_suroo.dart';
import 'package:education/pages/usa_test_page.dart';
import 'package:flutter/material.dart';
import 'package:education/model/world_capitals.dart';

class WorldCapitals extends StatefulWidget {
  const WorldCapitals({super.key});

  @override
  State<WorldCapitals> createState() => _WorldCapitalsState();
}

class _WorldCapitalsState extends State<WorldCapitals> {
  Set<Set<AllWorldCapitals>>? cities;

  Set<AllWorldCapitals> displayedCity = {};

  void displayedCities(Set<AllWorldCapitals> cities) {
    setState(() {
      displayedCity = cities;
    });
  }

  @override
  void initState() {
    super.initState();
    displayedCities(a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Дүйнө өлкөлөрүнүн борборлору'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          const SizedBox(height: 10),
          const Text(
            'Дүйнө өлкөлөрүнүн борборлору',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          
          // Table(
          //   textDirection: TextDirection.rtl,
          //   defaultVerticalAlignment: TableCellVerticalAlignment.top,
          //   border: TableBorder.all(width: 0.2, color: Colors.black),
          //   children: const [
          //     TableRow(children: [
          //       Text(
          //         "Континент",
          //         textScaleFactor: 1,
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 12,
          //             fontWeight: FontWeight.w600),
          //         textAlign: TextAlign.center,
          //       ),
          //       Text(
          //         "Өлкө",
          //         textScaleFactor: 1,
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 12,
          //             fontWeight: FontWeight.w600),
          //         textAlign: TextAlign.center,
          //       ),
          //       Text(
          //         "Борбор шаарлар",
          //         textScaleFactor: 1,
          //         style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 12,
          //             fontWeight: FontWeight.w600),
          //         textAlign: TextAlign.center,
          //       ),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("ОАЭ", textScaleFactor: 1),
          //       Text("Абу-Даби", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Нигерия", textScaleFactor: 1),
          //       Text("Абуджа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Эфиопия", textScaleFactor: 1),
          //       Text("Аддис-Абеба", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Гана", textScaleFactor: 1),
          //       Text("Аккра", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Алжир", textScaleFactor: 1),
          //       Text("Алжир", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Иордания", textScaleFactor: 1),
          //       Text("Амман", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Нидерланды", textScaleFactor: 1),
          //       Text("Амстердам", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Андорра", textScaleFactor: 1),
          //       Text("Андорра-ла-Велья", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Турция", textScaleFactor: 1),
          //       Text("Анкаpа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Мадагаскар", textScaleFactor: 1),
          //       Text("Антананариву", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Самоа", textScaleFactor: 1),
          //       Text("Апиа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Эритрея", textScaleFactor: 1),
          //       Text("Асмэра", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Казахстан", textScaleFactor: 1),
          //       Text("Астана", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Парагвай", textScaleFactor: 1),
          //       Text("Асунсьон", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Греция", textScaleFactor: 1),
          //       Text("Афины", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Туркмения", textScaleFactor: 1),
          //       Text("Ашхабад", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Ирак", textScaleFactor: 1),
          //       Text("Багдад", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Азербайджан", textScaleFactor: 1),
          //       Text("Баку", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Мали", textScaleFactor: 1),
          //       Text("Бамако", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Борбордукафрика Республикасы", textScaleFactor: 1),
          //       Text("Банги", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Таиланд", textScaleFactor: 1),
          //       Text("Бангкок", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Бруней", textScaleFactor: 1),
          //       Text("Бандар-Сери-Бегаван", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Гамбия", textScaleFactor: 1),
          //       Text("Банжул", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Бостон", textScaleFactor: 1),
          //       Text("6,1", textScaleFactor: 1),
          //       Text("Массачусетс", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Сент-Кристофер и Невис", textScaleFactor: 1),
          //       Text("Бастер", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Ливан", textScaleFactor: 1),
          //       Text("Бейрут", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Сербия", textScaleFactor: 1),
          //       Text("Белград", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Белиз", textScaleFactor: 1),
          //       Text("Бельмопан", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Германия", textScaleFactor: 1),
          //       Text("Берлин", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Швейцария", textScaleFactor: 1),
          //       Text("Берн", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Гвинея-Бисау", textScaleFactor: 1),
          //       Text("Бисау", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Линкольн", textScaleFactor: 1),
          //       Text("1,7", textScaleFactor: 1),
          //       Text("Небраска", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Киргизия", textScaleFactor: 1),
          //       Text("Бишкек", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка ", textScaleFactor: 1),
          //       Text("Колумбия", textScaleFactor: 1),
          //       Text("Богота", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Конго", textScaleFactor: 1),
          //       Text("Браззавиль", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Бразилия", textScaleFactor: 1),
          //       Text("Бразилиа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Словакия", textScaleFactor: 1),
          //       Text("Братислава", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Барбадос", textScaleFactor: 1),
          //       Text("Бриджтаун", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Бельгия", textScaleFactor: 1),
          //       Text("Брюссель", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Венгрия", textScaleFactor: 1),
          //       Text("Будапешт", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Бурунди", textScaleFactor: 1),
          //       Text("Бужумбура", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Румыния", textScaleFactor: 1),
          //       Text("Бухарест", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Аргентина", textScaleFactor: 1),
          //       Text("Буэнос-Айрес", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Лихтенштейн", textScaleFactor: 1),
          //       Text("Вадуц", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Мальта", textScaleFactor: 1),
          //       Text("Валетта", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Польша", textScaleFactor: 1),
          //       Text("Варшава", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Ватикан", textScaleFactor: 1),
          //       Text("Ватикан", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("США", textScaleFactor: 1),
          //       Text("Вашингтон", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Новая Зеландия", textScaleFactor: 1),
          //       Text("Веллингтон", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("	Австрия", textScaleFactor: 1),
          //       Text("Вена", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Сейшельс аралдары", textScaleFactor: 1),
          //       Text("Виктория", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Вануату", textScaleFactor: 1),
          //       Text("Вила", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Литва", textScaleFactor: 1),
          //       Text("Вильнюс", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Намибия", textScaleFactor: 1),
          //       Text("Намибия", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Лаос", textScaleFactor: 1),
          //       Text("Вьентьян", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Ботсвана", textScaleFactor: 1),
          //       Text("Габороне", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Куба", textScaleFactor: 1),
          //       Text("Куба", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Гватемала", textScaleFactor: 1),
          //       Text("Гватемала", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Сенегал", textScaleFactor: 1),
          //       Text("Дакар", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Бангладеш", textScaleFactor: 1),
          //       Text("Дакка", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Сирия", textScaleFactor: 1),
          //       Text("Дамаск", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Индия", textScaleFactor: 1),
          //       Text("Дели", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Индонезия", textScaleFactor: 1),
          //       Text("Джакарта", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Джибути", textScaleFactor: 1),
          //       Text("Джибути", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Гайана", textScaleFactor: 1),
          //       Text("Джорджтаун", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Түштүк Судан", textScaleFactor: 1),
          //       Text("Джуба", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Восточный Тимор", textScaleFactor: 1),
          //       Text("Дили", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Танзания", textScaleFactor: 1),
          //       Text("Додома", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Катар", textScaleFactor: 1),
          //       Text("Доха", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Ирландия", textScaleFactor: 1),
          //       Text("Дублин", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Таджикистан", textScaleFactor: 1),
          //       Text("Душанбе", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Армения", textScaleFactor: 1),
          //       Text("Ереван", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Хорватия", textScaleFactor: 1),
          //       Text("Загреб", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Израиль", textScaleFactor: 1),
          //       Text("Иерусалим", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Пакистан", textScaleFactor: 1),
          //       Text("Исламабад", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Афганистан", textScaleFactor: 1),
          //       Text("Кабул", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Египет", textScaleFactor: 1),
          //       Text("Каир", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Уганда", textScaleFactor: 1),
          //       Text("Кампала", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Канберра", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Венесуэла", textScaleFactor: 1),
          //       Text("Каракас", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Сент-Люсия", textScaleFactor: 1),
          //       Text("Кастри", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Непал", textScaleFactor: 1),
          //       Text("Катманду", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Руанда", textScaleFactor: 1),
          //       Text("Кигали", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Украина", textScaleFactor: 1),
          //       Text("Киев", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Сент-Винсент и Гренадины", textScaleFactor: 1),
          //       Text("Кингстаун", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Ямайка", textScaleFactor: 1),
          //       Text("Кингстон", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Конго (Дем. Република)", textScaleFactor: 1),
          //       Text("Киншаса", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Эквадор", textScaleFactor: 1),
          //       Text("КитоЕвропа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Молдавия", textScaleFactor: 1),
          //       Text("Кишинев", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Египет", textScaleFactor: 1),
          //       Text("Каир", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Шри-Ланка", textScaleFactor: 1),
          //       Text("Коломбо", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Гвинея", textScaleFactor: 1),
          //       Text("Конакри", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Дания", textScaleFactor: 1),
          //       Text("Копенгаген", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Палау", textScaleFactor: 1),
          //       Text("Корор", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Малайзия", textScaleFactor: 1),
          //       Text("Куала-Лумпур", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Египет", textScaleFactor: 1),
          //       Text("Каир", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Боливия", textScaleFactor: 1),
          //       Text("Ла-Пас", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Боливия", textScaleFactor: 1),
          //       Text("Ла-Пас", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Габон", textScaleFactor: 1),
          //       Text("Либревиль", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Малави", textScaleFactor: 1),
          //       Text("Лилонгве", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Перу", textScaleFactor: 1),
          //       Text("Лима", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Португалия", textScaleFactor: 1),
          //       Text("Лиссабон", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Того", textScaleFactor: 1),
          //       Text("Ломе", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Великобритания", textScaleFactor: 1),
          //       Text("Лондон", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Ангола", textScaleFactor: 1),
          //       Text("Луанда", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Замбия", textScaleFactor: 1),
          //       Text("Лусака", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Словения", textScaleFactor: 1),
          //       Text("Любляна", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Люксембург", textScaleFactor: 1),
          //       Text("Люксембург", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Маршалловы острова", textScaleFactor: 1),
          //       Text("Маджуро", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Испания", textScaleFactor: 1),
          //       Text("Мадрид", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Экваториальная Гвинея", textScaleFactor: 1),
          //       Text("Малабо", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Мальдивы", textScaleFactor: 1),
          //       Text("Мале", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Никарагуа", textScaleFactor: 1),
          //       Text("Манагуа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Бахрейн", textScaleFactor: 1),
          //       Text("Манама", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Филиппины", textScaleFactor: 1),
          //       Text("Манила", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Мозамбик", textScaleFactor: 1),
          //       Text("Мапуту", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Лесото", textScaleFactor: 1),
          //       Text("Масеру", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Оман", textScaleFactor: 1),
          //       Text("Маскат", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Эсватини", textScaleFactor: 1),
          //       Text("Мбабане", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Мексика", textScaleFactor: 1),
          //       Text("Мехико", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Белоруссия", textScaleFactor: 1),
          //       Text("Минск", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Сомали", textScaleFactor: 1),
          //       Text("Могадишо", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Монако", textScaleFactor: 1),
          //       Text("Монако", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Ангола", textScaleFactor: 1),
          //       Text("Луанда", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Либерия", textScaleFactor: 1),
          //       Text("Монровия", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Уругвай", textScaleFactor: 1),
          //       Text("Монтевидео", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Коморские острова", textScaleFactor: 1),
          //       Text("Морони", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Российская Федерация", textScaleFactor: 1),
          //       Text("Москва", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Кения", textScaleFactor: 1),
          //       Text("Найроби", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Багам аралдары ", textScaleFactor: 1),
          //       Text("Нассау", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Чад", textScaleFactor: 1),
          //       Text("Нджамена", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Мьянма", textScaleFactor: 1),
          //       Text("Нейпьидо", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Нигер", textScaleFactor: 1),
          //       Text("Ниамей", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Кипр", textScaleFactor: 1),
          //       Text("Никосия", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Мавритания", textScaleFactor: 1),
          //       Text("Нуакшот", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Тонга", textScaleFactor: 1),
          //       Text("Нукуалофа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Норвегия", textScaleFactor: 1),
          //       Text("Осло", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Канада", textScaleFactor: 1),
          //       Text("Оттава", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Суринам", textScaleFactor: 1),
          //       Text("Паpамаpибо", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Микронезия", textScaleFactor: 1),
          //       Text("Паликир", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Панама", textScaleFactor: 1),
          //       Text("Панама", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Франция", textScaleFactor: 1),
          //       Text("Париж", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Китай", textScaleFactor: 1),
          //       Text("Пекин", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Камбоджа", textScaleFactor: 1),
          //       Text("Пномпень", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Черногория", textScaleFactor: 1),
          //       Text("Подгорица", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Маврикий", textScaleFactor: 1),
          //       Text("Порт-Луи", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Папуа - Новая Гвинея", textScaleFactor: 1),
          //       Text("Порт-Морсби", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Гаити", textScaleFactor: 1),
          //       Text("Порт-о-Пренс", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Тринидад и Тобаго", textScaleFactor: 1),
          //       Text("Порт-оф-Спейн", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Бенин", textScaleFactor: 1),
          //       Text("Порто-Ново", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Чехия", textScaleFactor: 1),
          //       Text("Прага", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Кабо-Верде", textScaleFactor: 1),
          //       Text("Прая", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("ЮАР", textScaleFactor: 1),
          //       Text("Претория", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Түндүк Корея", textScaleFactor: 1),
          //       Text("Пхеньян", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Марокко", textScaleFactor: 1),
          //       Text("Рабат", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Палестина", textScaleFactor: 1),
          //       Text("Рамалла", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Нигер", textScaleFactor: 1),
          //       Text("Ниамей", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Исландия", textScaleFactor: 1),
          //       Text("Рейкьявик", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Латвия", textScaleFactor: 1),
          //       Text("Рига", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Италия", textScaleFactor: 1),
          //       Text("Рим", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Нигер", textScaleFactor: 1),
          //       Text("Ниамей", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Доминика", textScaleFactor: 1),
          //       Text("Розо", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Сан-Марино", textScaleFactor: 1),
          //       Text("Сан-Марино", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Сальвадор", textScaleFactor: 1),
          //       Text("Сан-Сальвадор", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("	Сан-Томе и Принсипи", textScaleFactor: 1),
          //       Text("Сан-Томе", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Коста-Рика", textScaleFactor: 1),
          //       Text("Сан-Хосе", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Йемен", textScaleFactor: 1),
          //       Text("Сана", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Доминикан Республикасы", textScaleFactor: 1),
          //       Text("Санто-Доминго", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түштүк Америка", textScaleFactor: 1),
          //       Text("Чили", textScaleFactor: 1),
          //       Text("Сантьяго", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Босния жана Герцеговина", textScaleFactor: 1),
          //       Text("Сараево", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Антигуа жана Барбуда", textScaleFactor: 1),
          //       Text("Сент-Джонс", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Гренада", textScaleFactor: 1),
          //       Text("Сент-Джорджес", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Түштүк корея", textScaleFactor: 1),
          //       Text("Сеул", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Сингапур", textScaleFactor: 1),
          //       Text("Сингапур", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Түндүк Македония", textScaleFactor: 1),
          //       Text("Скопье", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Болгария", textScaleFactor: 1),
          //       Text("София", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Швеция", textScaleFactor: 1),
          //       Text("Стокгольм", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Фиджи", textScaleFactor: 1),
          //       Text("Сува", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Тайвань", textScaleFactor: 1),
          //       Text("Тайпей", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Эстония", textScaleFactor: 1),
          //       Text("Таллинн", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Кирибати", textScaleFactor: 1),
          //       Text("Тарава", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Узбекистан", textScaleFactor: 1),
          //       Text("Ташкент", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Грузия", textScaleFactor: 1),
          //       Text("Тбилиси", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Иран", textScaleFactor: 1),
          //       Text("Тегеран", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Түндүк Америка", textScaleFactor: 1),
          //       Text("Гондурас", textScaleFactor: 1),
          //       Text("Тегусигальпа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Албания", textScaleFactor: 1),
          //       Text("Тирана", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Япония", textScaleFactor: 1),
          //       Text("Токио", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Ливия", textScaleFactor: 1),
          //       Text("Триполи", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Тунис", textScaleFactor: 1),
          //       Text("Тунис", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Бутан", textScaleFactor: 1),
          //       Text("Тхимпху", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Буркина-Фасо", textScaleFactor: 1),
          //       Text("Уагадугу", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Монголия", textScaleFactor: 1),
          //       Text("Улан-Батор", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Сьерра-Леоне", textScaleFactor: 1),
          //       Text("Фpитаун", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Тувалу", textScaleFactor: 1),
          //       Text("Фунафути", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Судан", textScaleFactor: 1),
          //       Text("Хаpтум", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Вьетнам", textScaleFactor: 1),
          //       Text("Ханой", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Зимбабве", textScaleFactor: 1),
          //       Text("Хараре", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Европа", textScaleFactor: 1),
          //       Text("Финляндия", textScaleFactor: 1),
          //       Text("Хельсинки", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Соломон аралдары", textScaleFactor: 1),
          //       Text("Хониаpа", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Кувейт", textScaleFactor: 1),
          //       Text("Эль-Кувейт", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Азия", textScaleFactor: 1),
          //       Text("Сауд Аравиясы", textScaleFactor: 1),
          //       Text("Эр-Рияд", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Кот-д'Ивуар", textScaleFactor: 1),
          //       Text("Ямусукро", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Австралия", textScaleFactor: 1),
          //       Text("Науру", textScaleFactor: 1),
          //       Text("Ярен", textScaleFactor: 1),
          //     ]),
          //     TableRow(children: [
          //       Text("Африка", textScaleFactor: 1),
          //       Text("Камерун", textScaleFactor: 1),
          //       Text("Яунде", textScaleFactor: 1),
          //     ]),
          //   ],
          // ),
          
          const SizedBox(height: 15),
          SizedBox(
            height: 80,
            width: 300,
            child: Card(
              color: Colors.red[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Урматтуу окуучу!! Тест сынагынан өтүңүз.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff42d792),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => UsaTestPage(
                              usaSuroo: usaSuroo,
                            ),
                          ),
                        );
                      },
                      child: const Text('ТЕСТ'),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ]),
      ),
    );
  }
}
*/