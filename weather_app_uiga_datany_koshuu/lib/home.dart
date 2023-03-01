import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_uiga_datany_koshuu/components/custom_icon_button.dart';
import 'package:weather_app_uiga_datany_koshuu/constant/api_const.dart';
import 'package:weather_app_uiga_datany_koshuu/constant/app_text_style.dart';
import 'package:weather_app_uiga_datany_koshuu/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Weather?> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    final dio = Dio();
    final result = await dio.get(
        "https://api.openweathermap.org/data/2.5/weather?q=london,&appid=41aa18abb8974c0ea27098038f6feb1b");
    if (result.statusCode == 200) {
      final Weather weather = Weather(
        id: result.data["weather"][0]["id"],
        main: result.data["weather"][0]["main"],
        description: result.data["weather"][0]["description"],
        icon: result.data["weather"][0]["icon"],
        city: result.data["name"],
        temp: result.data["main"]["temp"],
        country: result.data["sys"]["country"],
      );
      return weather;
    }
  }

  // @override
  // void initState() {
  //   super.initState();
  //   fetchData();
  // }

  @override
  Widget build(BuildContext context) {
    //Телефондун размери w411 h681
    // print("max width ===>${MediaQuery.of(context).size.width}");
    // print("max height ===>${MediaQuery.of(context).size.height}");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Тапшырма 9",
          style: AppTextStyle.appBar,
        ),
        elevation: 0,
      ),
//FutureBuilder бул setStateсиз тиркемеге датаны алып келүү үчүн колдонууга болот.
      body: FutureBuilder<Weather?>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.none) {
            return const Center(
                child: Text("Sizdin internet baylanyshnyz jok"));
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text("${snapshot.error}"));
            } else if (snapshot.hasData) {
              final weather = snapshot.data!;
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/image/image.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustomIconButton(
                          icon: Icons.near_me,
                        ),
                        CustomIconButton(
                          icon: Icons.location_city,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "${weather.temp}",
                          style: AppTextStyle.numberStyle,
                        ),
                        Image.network(
                          ApiConst.getIcon("11n", 4),
                          height: 160,
                          fit: BoxFit.fitHeight,
                        )
                      ],
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            weather.description.replaceAll(" ", "\n"),
                            style: AppTextStyle.description,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        weather.city,
                        style: AppTextStyle.cityName,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: Text(" unknown error"));
            }
          } else {
            return const Center(child: Text("not done"));
          }
        },
      ),
    );
  }
}
