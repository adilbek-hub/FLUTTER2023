import 'package:auto_size_text/auto_size_text.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/biology_question.dart';
import 'package:flutter/material.dart';

class MeeTestPage extends StatefulWidget {
  const MeeTestPage({
    super.key,
    required this.mee,
  });
  final List<Biology> mee;

  @override
  State<MeeTestPage> createState() => _MeeTestPageState();
}

class _MeeTestPageState extends State<MeeTestPage> {
  int indexmee = 0;
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
                max: 15,
                value: indexmee.toDouble(),
                onChanged: (value) {},
              ),
            ),
            Center(
              child: Text(
                widget.mee[indexmee].name,
                style: const TextStyle(fontSize: 20, height: 2),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                    'assets/images/biology/mee/${widget.mee[indexmee].image}.jpg'),
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
                        if (indexmee + 1 == widget.mee.length) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Сиздин тест жыйынтыгыңыз!'),
                              content: Text(
                                  'Туура: $tuuraJooptor\nКата:$kataJooptor'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    indexmee = 0;
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
                          if (widget.mee[indexmee].jooptor[index].tuuraJoop ==
                              true) {
                            tuuraJooptor++;
                          } else {
                            kataJooptor++;
                          }
                          setState(() {
                            indexmee++;
                          });
                        }
                      },
                      child: Center(
                        child: AutoSizeText(
                          mee[indexmee].jooptor[index].name,
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
