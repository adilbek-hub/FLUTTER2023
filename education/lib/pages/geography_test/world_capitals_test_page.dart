import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:education/bloc/education_bloc.dart';
import 'package:education/model/world_capitals_suroo.dart';
import 'package:flutter/material.dart';
import 'package:education/constants/app_color.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationSuccess) {
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      state.testTopicsModel.geography[0]
                          .worldCountryCapitals[indexWorldCapitals].guestion,
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
                        imageUrl: state.testTopicsModel.geography[0]
                            .worldCountryCapitals[indexWorldCapitals].image,
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
                              if (indexWorldCapitals + 1 ==
                                  state.testTopicsModel.geography[0]
                                      .worldCountryCapitals.length) {
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
                                if (state
                                        .testTopicsModel
                                        .geography[0]
                                        .worldCountryCapitals[
                                            indexWorldCapitals]
                                        .options[index]
                                        .correct ==
                                    true) {
                                  tuuraJooptor++;
                                } else {
                                  kataJooptor++;
                                }
                                setState(() {
                                  indexWorldCapitals++;
                                });
                              }
                            },
                            child: Center(
                              child: AutoSizeText(
                                state
                                    .testTopicsModel
                                    .geography[0]
                                    .worldCountryCapitals[indexWorldCapitals]
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
          throw ('ERROR in World Country Capitals');
        }
      },
    );
  }
}
