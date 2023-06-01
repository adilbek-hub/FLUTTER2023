import 'package:data_with_dio/constants/api_const.dart';
import 'package:data_with_dio/constants/app_colors.dart';
import 'package:data_with_dio/constants/app_text_styles.dart';
import 'package:data_with_dio/model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

const List cities = <String>[
  "Бишкек",
  "Каракол",
  "Баткен",
  "Талас",
  "Ош",
  "Жалал-Абад",
  "Нарын",
  "Токмок"
];

//  Бул жерде Датаны функция менен алып келип initState менен иштеттик
class FourthVariantGeolocator extends StatefulWidget {
  const FourthVariantGeolocator({super.key});

  @override
  State<FourthVariantGeolocator> createState() =>
      _FourthVariantGeolocatorState();
}

class _FourthVariantGeolocatorState extends State<FourthVariantGeolocator> {
  Weather? weather;

  Future<void> weatherLocator() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final res = await dio.get(
          ApiConst.latLongAddress(
            position.latitude,
            position.longitude,
          ),
        );
        if (res.statusCode == 200) {
          weather = Weather(
            id: res.data['current']['weather'][0]['id'],
            main: res.data['current']['weather'][0]['main'],
            description: res.data['current']['weather'][0]['description'],
            icon: res.data['current']['weather'][0]['icon'],
            temp: res.data['current']['temp'],
            city: res.data['timezone'],
          );
        }
        setState(() {});
      } else {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final res = await dio.get(
          ApiConst.latLongAddress(
            position.latitude,
            position.longitude,
          ),
        );
        if (res.statusCode == 200) {
          weather = Weather(
            id: res.data['current']['weather'][0]['id'],
            main: res.data['current']['weather'][0]['main'],
            description: res.data['current']['weather'][0]['description'],
            icon: res.data['current']['weather'][0]['icon'],
            temp: res.data['current']['temp'],
            city: res.data['timezone'],
          );
        }
        setState(() {});
      }
    }
  }

  Future<void> fetchData([String? url]) async {
    final dio = Dio();

    final res = await dio.get(url ??
        'https://api.openweathermap.org/data/2.5/weather?q=naryn,&appid=41aa18abb8974c0ea27098038f6feb1b');
    if (res.statusCode == 200) {
      weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        temp: res.data['main']['temp'],
        city: res.data['name'],
        country: res.data['sys']['country'],
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    // print(" Max height ======> ${MediaQuery.of(context).size.height}");
    // print(" Max weight ======> ${MediaQuery.of(context).size.height}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
        child: weather == null
            ? const CircularProgressIndicator()
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/image/bgImage.jpg',
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () async {
                              await weatherLocator();
                              print('---->');
                            },
                            icon: const Icon(
                              Icons.near_me,
                              color: AppColors.iconColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.location_city,
                              color: AppColors.iconColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(left: 10)),
                        Row(
                          children: [
                            Text(
                              '${(weather!.temp - 273.15).toInt()}',
                              style: AppTextStyles.sanTextStyle,
                            ),
                          ],
                        ),
                        Image.network(ApiConst.getIcon(weather!.icon, 4))
                      ],
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        weather!.description.replaceAll(' ', '\n'),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 70,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        weather!.city,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
  void showBottom(){
    
  }
}
