import 'package:auto_size_text/auto_size_text.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/informatica_suroo.dart';
import 'package:flutter/material.dart';

class ComputerdikTarmaktarTestPage extends StatefulWidget {
  const ComputerdikTarmaktarTestPage({
    super.key,
    required this.computerdikTarmaktar,
  });
  final List<InformaticaQuestions> computerdikTarmaktar;

  @override
  State<ComputerdikTarmaktarTestPage> createState() =>
      _ComputerdikTarmaktarTestPageState();
}

class _ComputerdikTarmaktarTestPageState
    extends State<ComputerdikTarmaktarTestPage> {
  int indexcomputerdikTarmaktar = 0;
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
                max: 6,
                value: indexcomputerdikTarmaktar.toDouble(),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FittedBox(
                child: Text(
                  widget.computerdikTarmaktar[indexcomputerdikTarmaktar].text,
                  style: const TextStyle(fontSize: 20, height: 2),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/informatica/computerdik_tarmaktar/${widget.computerdikTarmaktar[indexcomputerdikTarmaktar].images}.jpg',
                  fit: BoxFit.cover,
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
                        // usaSuroo[indexUsaSurooJoop].jooptor[index].isBool;
                        if (indexcomputerdikTarmaktar + 1 ==
                            widget.computerdikTarmaktar.length) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Сиздин тест жыйынтыгыңыз!'),
                              content: Text(
                                  'Туура: $tuuraJooptor\nКата:$kataJooptor'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    indexcomputerdikTarmaktar = 0;
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
                                  .computerdikTarmaktar[
                                      indexcomputerdikTarmaktar]
                                  .jooptor[index]
                                  .isTrue ==
                              true) {
                            tuuraJooptor++;
                          } else {
                            kataJooptor++;
                          }
                          setState(() {
                            indexcomputerdikTarmaktar++;
                          });
                        }
                      },
                      child: Center(
                        child: AutoSizeText(
                          personalComputer[indexcomputerdikTarmaktar]
                              .jooptor[index]
                              .text,
                          textAlign: TextAlign.center,
                          maxLines: 5,
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
