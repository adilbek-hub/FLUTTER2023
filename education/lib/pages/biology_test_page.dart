import 'package:education/components/test_page_appbar_title.dart';
import 'package:education/components/test_slider.dart';

import 'package:education/components/variants_biology.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/biology_question.dart';

import 'package:flutter/material.dart';

class BiologyTestPage extends StatefulWidget {
  const BiologyTestPage({super.key, required this.biologiaSuroo});
  final List<Biology> biologiaSuroo;

  @override
  State<BiologyTestPage> createState() => _BiologyTestPageState();
}

class _BiologyTestPageState extends State<BiologyTestPage> {
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
                widget.biologiaSuroo[index].name,
                style: const TextStyle(fontSize: 20, height: 2),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  'assets/images/biology/${widget.biologiaSuroo[index].image}.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            VariantsBiology(
              biologyJoop: widget.biologiaSuroo[index].jooptor,
              onTap: (isTrue) {
                if (index + 1 == widget.biologiaSuroo.length) {
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
