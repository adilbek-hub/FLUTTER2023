import 'dart:math';

import 'package:data_with_dio/constants/api_const.dart';
import 'package:data_with_dio/constants/app_colors.dart';
import 'package:data_with_dio/constants/app_text_styles.dart';
import 'package:data_with_dio/model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

//  Бул жерде Датаны функция менен алып келип initState менен иштеттик
class ThirdMyHomePage extends StatefulWidget {
  const ThirdMyHomePage({super.key});

  @override
  State<ThirdMyHomePage> createState() => _ThirdMyHomePageState();
}

class _ThirdMyHomePageState extends State<ThirdMyHomePage> {
// Асинхронный fetchData объекттиси менен датаны алып келдик
  Future<Weather?> fetchData() async {
    final dio = Dio();

    final res = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=naryn,&appid=41aa18abb8974c0ea27098038f6feb1b');
    if (res.statusCode == 200) {
      final Weather weather = Weather(
        id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        icon: res.data['weather'][0]['icon'],
        temp: res.data['main']['temp'],
        city: res.data['name'],
        country: res.data['sys']['country'],
      );
      return weather;
    }
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
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.none) {
              return const Text('Сизде интернет байланышы жок');
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                final weather = snapshot.data!;
                return Container(
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
                          children: const [
                            Icon(Icons.near_me, color: AppColors.iconColor),
                            Icon(Icons.location_city,
                                color: AppColors.iconColor),
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
                                '${(weather.temp - 273.15).toInt()}',
                                style: AppTextStyles.sanTextStyle,
                              ),
                            ],
                          ),
                          Image.network(ApiConst.getIcon(weather.icon, 4))
                        ],
                      ),
                      const SizedBox(height: 4),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          weather.description.replaceAll(' ', '\n'),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          weather.city,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return const Text('data келген жок');
              }
            } else {
              return const Text('Белгисиз катачылык бар');
            }
          },
        ),
      ),
    );
  }
}
