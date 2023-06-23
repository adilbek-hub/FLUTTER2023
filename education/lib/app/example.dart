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
        title: Text('City List'),
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
                child: Text('B'),
              ),
              ElevatedButton(
                onPressed: () {
                  displayCities(citiesC);
                },
                child: Text('C'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(width: 0.2, color: Colors.black),
            children: [
              TableRow(children: [
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
