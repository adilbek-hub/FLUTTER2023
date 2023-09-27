import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/history_question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/education_bloc.dart';

class RimImperiasyTestPage extends StatefulWidget {
  const RimImperiasyTestPage({
    super.key,
    required this.pimImperiasy,
  });
  final List<HistoryQuestions> pimImperiasy;

  @override
  State<RimImperiasyTestPage> createState() => _RimImperiasyTestPageState();
}

class _RimImperiasyTestPageState extends State<RimImperiasyTestPage> {
  int indexpimImperiasy = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestsBloc, EducationState>(
      builder: (context, state) {
        if (state is TestSuccess) {
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
                      value: indexpimImperiasy.toDouble(),
                      onChanged: (value) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      state.testTopicsModel.history[0].rim[indexpimImperiasy]
                          .guestion,
                      style: const TextStyle(fontSize: 20, height: 2),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: CachedNetworkImage(
                        imageUrl: state.testTopicsModel.history[0]
                            .rim[indexpimImperiasy].image,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Transform.scale(
                            scale: 0.2,
                            child: const CircularProgressIndicator(
                              color: Colors.red,
                              strokeWidth: 20,
                            )),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
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
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                              if (indexpimImperiasy + 1 ==
                                  state.testTopicsModel.history[0].rim.length) {
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title:
                                        const Text('Сиздин тест жыйынтыгыңыз!'),
                                    content: Text(
                                        'Туура: $tuuraJooptor\nКата:$kataJooptor'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          indexpimImperiasy = 0;
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
                                if (state
                                        .testTopicsModel
                                        .history[0]
                                        .rim[indexpimImperiasy]
                                        .options[index]
                                        .correct ==
                                    true) {
                                  tuuraJooptor++;
                                } else {
                                  kataJooptor++;
                                }
                                setState(() {
                                  indexpimImperiasy++;
                                });
                              }
                            },
                            child: Center(
                              child: AutoSizeText(
                                state
                                    .testTopicsModel
                                    .history[0]
                                    .rim[indexpimImperiasy]
                                    .options[index]
                                    .answer,
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
        } else {
          throw ('ERROR in Rim');
        }
      },
    );
  }
}
