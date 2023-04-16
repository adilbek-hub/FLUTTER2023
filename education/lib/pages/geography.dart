import 'package:education/components/full_information.dart';
import 'package:flutter/material.dart';

class Geography extends StatefulWidget {
  const Geography({super.key});

  @override
  State<Geography> createState() => _GeographyState();
}

class _GeographyState extends State<Geography> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/images/capitals/geographyTeather.jpg'),
          const Expanded(child: GeographyTopics()),
        ],
      ),
    );
  }
}

class GeographyTopics extends StatelessWidget {
  const GeographyTopics({super.key});

  @override
  Widget build(BuildContext context) {
    List<Color> colors = [
      const Color.fromARGB(255, 246, 141, 134),
      const Color.fromARGB(255, 128, 195, 250),
      const Color.fromARGB(255, 154, 247, 157),
      const Color.fromARGB(255, 249, 239, 147),
      const Color.fromARGB(255, 249, 201, 130),
      const Color.fromARGB(255, 246, 141, 134),
      const Color.fromARGB(255, 128, 195, 250),
      const Color.fromARGB(255, 154, 247, 157),
      const Color.fromARGB(255, 249, 239, 147),
      const Color.fromARGB(255, 249, 201, 130),
      const Color.fromARGB(255, 246, 141, 134),
      const Color.fromARGB(255, 128, 195, 250),
      const Color.fromARGB(255, 154, 247, 157),
      const Color.fromARGB(255, 249, 239, 147),
      const Color.fromARGB(255, 249, 201, 130),
      const Color.fromARGB(255, 246, 141, 134),
      const Color.fromARGB(255, 128, 195, 250),
      const Color.fromARGB(255, 154, 247, 157),
      const Color.fromARGB(255, 249, 239, 147),
      const Color.fromARGB(255, 249, 201, 130),
      const Color.fromARGB(255, 246, 141, 134),
      const Color.fromARGB(255, 128, 195, 250),
      const Color.fromARGB(255, 154, 247, 157),
      const Color.fromARGB(255, 249, 239, 147),
      const Color.fromARGB(255, 249, 201, 130),
    ];
    String getTextForIndex(int index) {
      switch (index) {
        case 0:
          return 'Борбор шаарлары';
        case 1:
          return 'Америка Кошмо Штаттары';
        case 2:
          return 'Text for container 2';
        case 3:
          return 'Text for container 2';
        case 4:
          return 'Text for container 2';
        case 5:
          return 'Text for container 2';
        case 6:
          return 'Text for container 2';
        case 7:
          return 'Text for container 2';
        case 8:
          return 'Text for container 2';
        case 9:
          return 'Text for container 2';
        case 10:
          return 'Text for container 2';
        case 11:
          return 'Text for container 2';
        case 12:
          return 'Text for container 2';
        case 13:
          return 'Text for container 2';
        case 14:
          return 'Text for container 2';
        case 15:
          return 'Text for container 2';
        case 16:
          return 'Text for container 2';
        case 17:
          return 'Text for container 2';
        case 18:
          return 'Text for container 2';
        case 19:
          return 'Text for container 2';
        case 20:
          return 'Text for container 2';
        case 21:
          return 'Text for container 2';
        case 22:
          return 'Text for container 2';
        case 23:
          return 'Text for container 2';
        case 24:
          return 'Text for container 2';

        default:
          return 'Default text for container $index';
      }
    }

    String getTextForIndex2(int index) {
      switch (index) {
        case 0:
          return 'Кымбаттуу окуучу, биз жашап жаткан жер плантетабыздагы ар бир өлкөнүн борбор шаарларын сизге тааныштырабыз.';
        case 1:
          return 'Америка Кошмо Штаттары жер планетасынын батыш тарабында орун алган дүйнөдөгү кубаттуу жана чоң өлкөлөрдүн бири. АКШ тууралуу кенен маалымат алыңыз.';
        case 2:
          return 'Text for container 2';
        case 3:
          return 'Text for container 2';
        case 4:
          return 'Text for container 2';
        case 5:
          return 'Text for container 2';
        case 6:
          return 'Text for container 2';
        case 7:
          return 'Text for container 2';
        case 8:
          return 'Text for container 2';
        case 9:
          return 'Text for container 2';
        case 10:
          return 'Text for container 2';
        case 11:
          return 'Text for container 2';
        case 12:
          return 'Text for container 2';
        case 13:
          return 'Text for container 2';
        case 14:
          return 'Text for container 2';
        case 15:
          return 'Text for container 2';
        case 16:
          return 'Text for container 2';
        case 17:
          return 'Text for container 2';
        case 18:
          return 'Text for container 2';
        case 19:
          return 'Text for container 2';
        case 20:
          return 'Text for container 2';
        case 21:
          return 'Text for container 2';
        case 22:
          return 'Text for container 2';
        case 23:
          return 'Text for container 2';
        case 24:
          return 'Text for container 2';

        default:
          return 'Default text for container $index';
      }
    }

    String getTextForIndex3(int index) {
      switch (index) {
        case 0:
          return 'assets/images/capitals/globe.png';
        case 1:
          return 'assets/images/capitals/america.png';
        case 2:
          return 'assets/images/capitals/globe.png';
        case 3:
          return 'assets/images/capitals/globe.png';
        case 4:
          return 'assets/images/capitals/globe.png';
        case 5:
          return 'assets/images/capitals/globe.png';
        case 6:
          return 'assets/images/capitals/globe.png';
        case 7:
          return 'assets/images/capitals/globe.png';
        case 8:
          return 'assets/images/capitals/globe.png';
        case 9:
          return 'assets/images/capitals/globe.png';
        case 10:
          return 'assets/images/capitals/globe.png';
        case 11:
          return 'assets/images/capitals/globe.png';
        case 12:
          return 'assets/images/capitals/globe.png';
        case 13:
          return 'assets/images/capitals/globe.png';
        case 14:
          return 'assets/images/capitals/globe.png';
        case 15:
          return 'assets/images/capitals/globe.png';
        case 16:
          return 'assets/images/capitals/globe.png';
        case 17:
          return 'assets/images/capitals/globe.png';
        case 18:
          return 'assets/images/capitals/globe.png';
        case 19:
          return 'assets/images/capitals/globe.png';
        case 20:
          return 'assets/images/capitals/globe.png';
        case 21:
          return 'assets/images/capitals/globe.png';
        case 22:
          return 'assets/images/capitals/globe.png';
        case 23:
          return 'assets/images/capitals/globe.png';
        case 24:
          return 'assets/images/capitals/globe.png';

        default:
          return 'Default text for container $index';
      }
    }

    return ListView.builder(
        itemCount: 25,
        itemBuilder: (BuildContext context, int index) {
          final colorIndex = index % colors.length;
          return Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FullInformation(),
                  ),
                );
              },
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colors[colorIndex],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        getTextForIndex(index),
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              getTextForIndex2(index),
                            ),
                          ),
                          Image.asset(
                            getTextForIndex3(index),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
