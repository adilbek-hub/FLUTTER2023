import 'package:education/components/test_page_appbar_title.dart';
import 'package:education/components/test_slider.dart';
import 'package:education/components/variants.dart';
import 'package:education/components/variants_history.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/europe_suroo.dart';
import 'package:education/model/history_question.dart';
import 'package:flutter/material.dart';

class HistoryTestPage extends StatefulWidget {
  const HistoryTestPage({super.key, required this.historySuroo});
  final List<HistoryQuestions> historySuroo;

  @override
  State<HistoryTestPage> createState() => _HistoryTestPageState();
}

class _HistoryTestPageState extends State<HistoryTestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: AppColors.appforegroundColor,
          backgroundColor: AppColors.bgColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: TestPageAppBarTitle(
            kataJooptor: kataJooptor,
            tuuraJooptor: tuuraJooptor,
          ),
          elevation: 0,
        ),
        body: Column(
          children: [
            TestSlider(
              value: index,
            ),
            Center(
              child: Text(
                widget.historySuroo[index].text,
                style: const TextStyle(fontSize: 20, height: 2),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                    'assets/images/capitals/${widget.historySuroo[index].images}.jpeg'),
              ),
            ),
            VariantsHistory(
              historyJoop: widget.historySuroo[index].jooptor,
              onTap: (isTrue) {
                if (index + 1 == widget.historySuroo.length) {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Сиздин тест жыйынтыгыңыз!'),
                      content: Text('Туура: $tuuraJooptor\nКата:$kataJooptor'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            index = 0;

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
                  if (isTrue == true) {
                    tuuraJooptor++;
                  } else {
                    kataJooptor++;
                  }
                  setState(() {
                    index++;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
