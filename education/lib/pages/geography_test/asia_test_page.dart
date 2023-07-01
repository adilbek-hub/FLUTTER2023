import 'package:education/constants/app_color.dart';
import 'package:education/model/asia_suroo.dart';
import 'package:flutter/material.dart';

class AsiaTestPage extends StatefulWidget {
  const AsiaTestPage({
    super.key,
    required this.asiaSuroo,
  });
  final List<AsiaSuroo> asiaSuroo;

  @override
  State<AsiaTestPage> createState() => _AsiaTestPageState();
}

class _AsiaTestPageState extends State<AsiaTestPage> {
  int indexAsia = 0;
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
                max: 11,
                value: indexAsia.toDouble(),
                onChanged: (value) {},
              ),
            ),
            Center(
              child: Text(
                widget.asiaSuroo[indexAsia].text,
                style: const TextStyle(fontSize: 20, height: 2),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                    'assets/images/asia_continenti/${widget.asiaSuroo[indexAsia].image}.jpg'),
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
                        if (indexAsia + 1 == widget.asiaSuroo.length) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Сиздин тест жыйынтыгыңыз!'),
                              content: Text(
                                  'Туура: $tuuraJooptor\nКата:$kataJooptor'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    indexAsia = 0;
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
                          if (widget
                                  .asiaSuroo[indexAsia].jooptor[index].isBool ==
                              true) {
                            tuuraJooptor++;
                          } else {
                            kataJooptor++;
                          }
                          setState(() {
                            indexAsia++;
                          });
                        }
                      },
                      child: Center(
                        child: Text(
                          asiaSuroo[indexAsia].jooptor[index].text,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
