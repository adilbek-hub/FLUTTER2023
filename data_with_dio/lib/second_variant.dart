import 'package:data_with_dio/model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

//  Бул жерде Датаны функция менен алып келип initState менен иштеттик
class SecondMyHomePage extends StatefulWidget {
  const SecondMyHomePage({super.key});

  @override
  State<SecondMyHomePage> createState() => _SecondMyHomePageState();
}

class _SecondMyHomePageState extends State<SecondMyHomePage> {
// Асинхронный fetchData объекттиси менен датаны алып келдик
  Future<Weather?> fetchData() async {
    final dio = Dio();

    final res = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
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
    return null;
  }

  @override
  Widget build(BuildContext context) {
    print(" Max height ======> ${MediaQuery.of(context).size.height}");
    print(" Max weight ======> ${MediaQuery.of(context).size.height}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyHomePage'),
      ),
      body: Center(
        child: FutureBuilder<Weather?>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data!.id.toString()),
                  Text(snapshot.data!.main),
                  Text(snapshot.data!.description),
                  Text(snapshot.data!.icon),
                  Text(snapshot.data!.city),
                  Text(
                    snapshot.data!.temp.toString(),
                  ),
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
