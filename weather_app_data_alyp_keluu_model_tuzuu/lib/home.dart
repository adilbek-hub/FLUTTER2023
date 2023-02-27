import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_data_alyp_keluu_model_tuzuu/model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Weather?> fetchData() async {
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
    return Scaffold(
      //FutureBuilder бул setStateсиз тиркемеге датаны алып келүү үчүн колдонууга болот.
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Text(snapshot.data!.description),
                  Text(snapshot.data!.icon),
                  Text(snapshot.data!.main),
                  Text(snapshot.data!.id.toString()),
                  Text(snapshot.data!.country),
                  Text(snapshot.data!.city),
                  Text(snapshot.data!.temp.toString()),
                ],
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
