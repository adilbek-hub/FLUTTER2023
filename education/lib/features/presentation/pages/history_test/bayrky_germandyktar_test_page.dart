import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:education/features/presentation/bloc/education_bloc.dart';
import 'package:education/features/presentation/components/correct_incorrect_card.dart';
import 'package:education/features/presentation/components/informatica_bolumu/loading_widget.dart';
import 'package:education/features/presentation/components/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BayrkyGermandyktarTestPage extends StatefulWidget {
  const BayrkyGermandyktarTestPage({super.key});

  @override
  State<BayrkyGermandyktarTestPage> createState() =>
      _BayrkyGermandyktarTestPageState();
}

class _BayrkyGermandyktarTestPageState
    extends State<BayrkyGermandyktarTestPage> {
  int indexbairkyGermandyktar = 0;
  int tuuraJooptor = 0;
  int kataJooptor = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BayirkyGermandarTestBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const LoadingWidget();
        }
        if (state is BayirkyGermandarTestSuccess) {
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
                  SliderWidget(
                      max: 9, valueIndex: indexbairkyGermandyktar.toDouble()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Center(
                      child: Text(
                        state
                            .bayirkyGermandarTestToicsModel[
                                indexbairkyGermandyktar]
                            .guestion,
                        style: const TextStyle(fontSize: 20, height: 2),
                        textAlign: TextAlign.center,
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
                          imageUrl: state
                              .bayirkyGermandarTestToicsModel[
                                  indexbairkyGermandyktar]
                              .image,
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
                              if (indexbairkyGermandyktar + 1 ==
                                  state.bayirkyGermandarTestToicsModel.length) {
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
                                          indexbairkyGermandyktar = 0;
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
                                        .bayirkyGermandarTestToicsModel[
                                            indexbairkyGermandyktar]
                                        .options[index]
                                        .correct ==
                                    true) {
                                  tuuraJooptor++;
                                } else {
                                  kataJooptor++;
                                }
                                setState(() {
                                  indexbairkyGermandyktar++;
                                });
                              }
                            },
                            child: Center(
                              child: AutoSizeText(
                                state
                                    .bayirkyGermandarTestToicsModel[
                                        indexbairkyGermandyktar]
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
          throw ('ERROR in baiyrky germandyktar');
        }
      },
    );
  }
}
