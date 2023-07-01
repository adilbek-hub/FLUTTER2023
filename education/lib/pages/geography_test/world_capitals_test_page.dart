import 'package:education/model/world_capitals_suroo.dart';
import 'package:flutter/material.dart';
import 'package:education/constants/app_color.dart';

class WorldCapitalsTestPage extends StatefulWidget {
  const WorldCapitalsTestPage({Key? key, required this.worldCapitalsList})
      : super(key: key);
  final List<WorldCapitalsSuroo> worldCapitalsList;

  @override
  State<WorldCapitalsTestPage> createState() => _WorldCapitalsTestPageState();
}

class _WorldCapitalsTestPageState extends State<WorldCapitalsTestPage> {
  int indexWorldCapitals = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;
  int aralash = 0;

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
              value: indexWorldCapitals.toDouble(),
              onChanged: (value) {},
            ),
          ),
          Center(
            child: Text(
              widget.worldCapitalsList[indexWorldCapitals].text,
              style: const TextStyle(fontSize: 20, height: 2),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                'assets/images/world_capitals/${widget.worldCapitalsList[indexWorldCapitals].image}.jpg',
              ),
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
                      // setState(() {
                      //   indexWorldCapitals = Random().nextInt(26) + 1;
                      // });
                      if (indexWorldCapitals + 1 ==
                          widget.worldCapitalsList.length) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Сиздин тест жыйынтыгыңыз!'),
                            content:
                                Text('Туура: $tuuraJooptor\nКата:$kataJooptor'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  indexWorldCapitals = 0;
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
                        if (widget.worldCapitalsList[indexWorldCapitals]
                                .jooptor[index].isBool ==
                            true) {
                          tuuraJooptor++;
                        } else {
                          kataJooptor++;
                        }
                        setState(() {
                          indexWorldCapitals++; /*= Random().nextInt(aralash++) + 1;*/
                        });
                      }
                    },
                    child: Center(
                      child: Text(widget.worldCapitalsList[indexWorldCapitals]
                          .jooptor[index].text),
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
