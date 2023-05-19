import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_ui_tuzuu/components/custom_icon_button.dart';
import 'package:weather_app_ui_tuzuu/constant/api_const.dart';
import 'package:weather_app_ui_tuzuu/constant/app_text_style.dart';
import 'package:weather_app_ui_tuzuu/model.dart';

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
    } else {
      return null;
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

      body: Container(
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                const Text(
                  "8",
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
                    "You'll need and".replaceAll(" ", "\n"),
                    style: AppTextStyle.description,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Bishkek",
                style: AppTextStyle.cityName,
              ),
            )
          ],
        ),
      ),
      //FutureBuilder бул setStateсиз тиркемеге датаны алып келүү үчүн колдонууга болот.
      // body: Center(
      //   child: FutureBuilder(
      //     future: fetchData(),
      //     builder: (context, snapshot) {
      //       if (snapshot.hasData) {
      //         return Column(
      //           children: [
      //             Text(snapshot.data!.description),
      //             Text(snapshot.data!.icon),
      //             Text(snapshot.data!.main),
      //             Text(snapshot.data!.id.toString()),
      //             Text(snapshot.data!.country),
      //             Text(snapshot.data!.city),
      //             Text(snapshot.data!.temp.toString()),
      //           ],
      //         );
      //       } else if (snapshot.hasError) {
      //         return Text(snapshot.error.toString());
      //       } else {
      //         return const CircularProgressIndicator();
      //       }
      //     },
      //   ),
      // ),
    );
  }
}
