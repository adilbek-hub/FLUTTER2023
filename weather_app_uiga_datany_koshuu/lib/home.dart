import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
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
  Weather? weather;
  Future<void> weatherLocation() async {
    setState(() {
      weather == null;
    });
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.always &&
          permission == LocationPermission.whileInUse) {
        Position position = await Geolocator.getCurrentPosition();
        final dio = Dio();
        final result = await dio
            .get(ApiConst.latLongaddres(position.latitude, position.longitude));
        if (result.statusCode == 200) {
          weather = Weather(
            id: result.data["current"]["weather"][0]["id"],
            main: result.data["current"]["weather"][0]["main"],
            description: result.data["current"]["weather"][0]["description"],
            icon: result.data["current"]["weather"][0]["icon"],
            city: result.data["timezone"],
            temp: result.data["current"]["temp"],
          );
        }
        setState(() {});
      }
    } else {
      Position position = await Geolocator.getCurrentPosition();
      final dio = Dio();
      final result = await dio
          .get(ApiConst.latLongaddres(position.latitude, position.longitude));
      if (result.statusCode == 200) {
        weather = Weather(
          id: result.data["current"]["weather"][0]["id"],
          main: result.data["current"]["weather"][0]["main"],
          description: result.data["current"]["weather"][0]["description"],
          icon: result.data["current"]["weather"][0]["icon"],
          city: result.data["timezone"],
          temp: result.data["current"]["temp"],
        );
      }
      setState(() {});
    }
  }

  Future<void> fetchData([String? url]) async {
    // await Future.delayed(const Duration(seconds: 1));
    final dio = Dio();
    final result = await dio.get(url ?? ApiConst.address);
    if (result.statusCode == 200) {
      weather = Weather(
        id: result.data["weather"][0]["id"],
        main: result.data["weather"][0]["main"],
        description: result.data["weather"][0]["description"],
        icon: result.data["weather"][0]["icon"],
        city: result.data["name"],
        temp: result.data["main"]["temp"],
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
      body: weather == null
          ? const Center(child: CircularProgressIndicator())
          : Container(
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
                    children: [
                      CustomIconButton(
                        onPressed: () async {
                          await weatherLocation();
                        },
                        icon: Icons.near_me,
                      ),
                      CustomIconButton(
                        onPressed: () {},
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
                        "${(weather!.temp - 273.15).floorToDouble()}",
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
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: FittedBox(
                          child: Text(
                            weather!.description.replaceAll(" ", "\n"),
                            style: AppTextStyle.description,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                        child: Text(
                          weather!.city,
                          style: AppTextStyle.cityName,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
