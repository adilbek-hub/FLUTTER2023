import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:education/components/correct_incorrect_card.dart';
import 'package:education/components/slider_widget.dart';
import 'package:education/components/test_page_appbar_title.dart';
import 'package:education/components/test_slider.dart';
import 'package:education/components/variants.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/model/europe_suroo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/education_bloc.dart';

class EuropeTestPage extends StatefulWidget {
  const EuropeTestPage({super.key, required this.suroo});
  final List<EuropeSuroo> suroo;

  @override
  State<EuropeTestPage> createState() => _EuropeTestPageState();
}

class _EuropeTestPageState extends State<EuropeTestPage> {
  int europeCountryIndex = 0;
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
                    CorrectIncorrectCard(
                      kataJooptor: kataJooptor,
                      tuuraJooptor: tuuraJooptor,
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
                      value: europeCountryIndex.toDouble(),
                      onChanged: (value) {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        state.testTopicsModel[0].geography[0]
                            .europeCapital[europeCountryIndex].guestion,
                        style: const TextStyle(fontSize: 20, height: 2),
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: CachedNetworkImage(
                          imageUrl: state.testTopicsModel[0].geography[0]
                              .europeCapital[europeCountryIndex].image,
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
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
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
                              if (europeCountryIndex + 1 ==
                                  state.testTopicsModel[0].geography[0]
                                      .europeCapital.length) {
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
                                          europeCountryIndex = 0;
                                          kataJooptor = 0;
                                          tuuraJooptor = 0;
                                          setState(() {});
                                          Navigator.pop(context);
                                        },
                                        child: const Text('чыгуу'),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                if (state
                                        .testTopicsModel[0]
                                        .geography[0]
                                        .europeCapital[index]
                                        .options[europeCountryIndex]
                                        .correct ==
                                    true) {
                                  tuuraJooptor++;
                                } else {
                                  kataJooptor++;
                                }
                                setState(() {
                                  europeCountryIndex++;
                                });
                              }
                            },
                            child: Center(
                              child: AutoSizeText(
                                state
                                    .testTopicsModel[0]
                                    .geography[0]
                                    .europeCapital[europeCountryIndex]
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
          throw ('ERROR in EuropeTest');
        }
      },
    );
  }
}
