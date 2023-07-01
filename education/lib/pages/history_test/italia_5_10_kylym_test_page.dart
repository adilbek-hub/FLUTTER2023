import 'package:auto_size_text/auto_size_text.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/asia_suroo.dart';
import 'package:education/model/history_question.dart';
import 'package:education/model/informatica_suroo.dart';
import 'package:flutter/material.dart';

class ItaliaKorolduguTestPage extends StatefulWidget {
  const ItaliaKorolduguTestPage({
    super.key,
    required this.italia,
  });
  final List<HistoryQuestions> italia;

  @override
  State<ItaliaKorolduguTestPage> createState() =>
      _ItaliaKorolduguTestPageState();
}

class _ItaliaKorolduguTestPageState extends State<ItaliaKorolduguTestPage> {
  int indexitalia = 0;
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
                max: 10,
                value: indexitalia.toDouble(),
                onChanged: (value) {},
              ),
            ),
            Center(
              child: Text(
                widget.italia[indexitalia].text,
                style: const TextStyle(fontSize: 20, height: 2),
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                    'assets/images/history/italia/${widget.italia[indexitalia].images}.jpg'),
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
                        if (indexitalia + 1 == widget.italia.length) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Сиздин тест жыйынтыгыңыз!'),
                              content: Text(
                                  'Туура: $tuuraJooptor\nКата:$kataJooptor'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    indexitalia = 0;
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
                                  .italia[indexitalia].jooptor[index].isTrue ==
                              true) {
                            tuuraJooptor++;
                          } else {
                            kataJooptor++;
                          }
                          setState(() {
                            indexitalia++;
                          });
                        }
                      },
                      child: Center(
                        child: AutoSizeText(
                          italia[indexitalia].jooptor[index].text,
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
