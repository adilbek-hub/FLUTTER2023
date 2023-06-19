import 'package:flutter/material.dart';

import 'package:education/components/test_page_appbar_title.dart';
import 'package:education/components/test_slider.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/usa_suroo.dart';

class UsaTestPage extends StatefulWidget {
  const UsaTestPage({Key? key, required this.usaSuroo}) : super(key: key);
  final List<UsaSuroo> usaSuroo;

  @override
  State<UsaTestPage> createState() => _UsaTestPageState();
}

class _UsaTestPageState extends State<UsaTestPage> {
  int indexUsaSurooJoop = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '$kataJooptor',
                      style: const TextStyle(
                          color: AppColors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          '|',
                          style: TextStyle(fontSize: 17),
                        )),
                    Text(
                      '$tuuraJooptor',
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
                thumbShape: SliderComponentShape.noThumb,
                trackHeight: 3,
                activeTrackColor: Colors.red,
                inactiveTrackColor: Colors.black,
                activeTickMarkColor: Colors.blue,
                trackShape: const RectangularSliderTrackShape()),
            child: Slider(
              min: 0,
              max: 26,
              value: indexUsaSurooJoop.toDouble(),
              onChanged: (value) {},
            ),
          ),
          Center(
            child: Text(
              widget.usaSuroo[indexUsaSurooJoop].text,
              style: const TextStyle(fontSize: 20, height: 2),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/images/usa/${widget.usaSuroo[indexUsaSurooJoop].image}.jpeg',
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
              ),
              // physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.6,
              ),
              itemCount: 4,
              itemBuilder: ((context, index) {
                return Card(
                  color: Colors.grey[400],
                  child: InkWell(
                    onTap: () {
                      // usaSuroo[indexUsaSurooJoop].jooptor[index].isBool;
                      if (indexUsaSurooJoop + 1 == widget.usaSuroo.length) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Сиздин тест жыйынтыгыңыз!'),
                            content:
                                Text('Туура: $tuuraJooptor\nКата:$kataJooptor'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  indexUsaSurooJoop = 0;
                                  kataJooptor = 0;
                                  tuuraJooptor = 0;
                                  setState(() {});
                                  Navigator.pop(context);
                                },
                                child: const Text('Cancel'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        if (widget.usaSuroo[indexUsaSurooJoop].jooptor[index]
                                .isBool ==
                            true) {
                          tuuraJooptor++;
                        } else {
                          kataJooptor++;
                        }
                        setState(() {
                          indexUsaSurooJoop++;
                        });
                      }
                    },
                    child: Center(
                      child:
                          Text(usaSuroo[indexUsaSurooJoop].jooptor[index].text),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    ));
  }
}
