import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../services/informatica_topics_service.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subjectService.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                'assets/images/home_view_images/undraw_online_test_re_kyfx 1.svg',
              ),
              const Text(
                'Билим өргөөсүнө куш келдиң!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Өнүгүү жолуң байсалдуу болсун! Сенин дүйнө таанымың жогорулап, кызыккан суроолоруңдун жообун таап, ойноп окушуңа шарт түзүү максатыбыз болду. Сен дагы кыялданып, максатыңа жет. Билим алсаң максаттарга жол тез ачылат. ',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff50C2C9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    onPressed: () {
                      Navigator.pushNamed(context, 'BooksView');
                    },
                    child: const Text(
                      'Баштоо',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
