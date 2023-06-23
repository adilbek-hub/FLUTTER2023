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
                  child: Text('A'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(b);
                  },
                  child: Text('Б'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(v);
                  },
                  child: Text('В'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(g);
                  },
                  child: Text('Г'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(d);
                  },
                  child: Text('Д'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(i);
                  },
                  child: Text('И'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(k);
                  },
                  child: Text('К'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(l);
                  },
                  child: Text('Л'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(m);
                  },
                  child: Text('М'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(n);
                  },
                  child: Text('Н'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(o);
                  },
                  child: Text('О'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(p);
                  },
                  child: Text('П'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(r);
                  },
                  child: Text('Р'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(s);
                  },
                  child: Text('С'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(t);
                  },
                  child: Text('Т'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(u);
                  },
                  child: Text('У'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(fhy);
                  },
                  child: Text('ФХЯ'),
                ),
                ElevatedButton(
                  onPressed: () {
                    displayedCities(e);
                  },
                  child: Text('Е'),
                ),
              ],
            ),
          ),
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
              ...displayedCity.map((city) {
                return TableRow(children: [
                  Text(city.continent, textScaleFactor: 1),
                  Text(city.country, textScaleFactor: 1),
                  Text(city.name, textScaleFactor: 1),
                ]);
              }).toList(),
            ],
          ),
          const SizedBox(height: 240),
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
