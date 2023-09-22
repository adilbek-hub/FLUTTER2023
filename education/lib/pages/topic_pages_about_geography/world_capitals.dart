import 'package:flutter/material.dart';
import 'package:education/model/geography_model.dart';
import 'package:education/model/world_capitals.dart';
import 'package:education/model/world_capitals_suroo.dart';
import 'package:education/pages/geography_test/world_capitals_test_page.dart';

class WorldCapitals extends StatefulWidget {
  const WorldCapitals({Key? key, required this.geographyTopicsModel})
      : super(key: key);
  final List<GeographyTopicsModel> geographyTopicsModel;

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
          SizedBox(
            height: 50,
            width: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    displayedCities(a);
                  },
                  child: const Text('A'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(b);
                  },
                  child: const Text('Б'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(v);
                  },
                  child: const Text('В'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(g);
                  },
                  child: const Text('Г'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(d);
                  },
                  child: const Text('Д'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(i);
                  },
                  child: const Text('И'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(k);
                  },
                  child: const Text('К'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(l);
                  },
                  child: const Text('Л'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(m);
                  },
                  child: const Text('М'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(n);
                  },
                  child: const Text('Н'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(o);
                  },
                  child: const Text('О'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(p);
                  },
                  child: const Text('П'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(r);
                  },
                  child: const Text('Р'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(s);
                  },
                  child: const Text('С'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(t);
                  },
                  child: const Text('Т'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(u);
                  },
                  child: const Text('У'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(fhy);
                  },
                  child: const Text('ФХЯ'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(e);
                  },
                  child: const Text('Е'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Table(
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
                  ...displayedCity.map((city) {
                    return TableRow(children: [
                      Text(city.continent, textScaleFactor: 1),
                      Text(city.country, textScaleFactor: 1),
                      Text(city.name, textScaleFactor: 1),
                    ]);
                  }).toList(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
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
                  const SizedBox(height: 2),
                  SizedBox(
                    height: 30,
                    width: 200,
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
                            builder: (BuildContext context) =>
                                WorldCapitalsTestPage(
                              worldCapitalsList: capitalsWorld,
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
