import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:education/bloc/education_bloc.dart';
import 'package:education/components/informatica_bolumu/loading_widget.dart';
import 'package:education/model/geography_model.dart';
import 'package:education/pages/geography_test/asia_test_page.dart';

class AsiaContinenti extends StatelessWidget {
  const AsiaContinenti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: BlocBuilder<GeographyBloc, EducationState>(
          builder: (context, state) {
            if (state is EducationLoading) {
              return const LoadingWidget();
            } else if (state is EducationError) {
              return Center(
                child: Text(state.text),
              );
            } else if (state is GeographySuccess) {
              return AsiaLesson(
                geographyTopicsModel: state.geographyTopicsModel,
              );
            } else {
              return throw ('ERROR UNKNOWN');
            }
          },
        ),
      ),
    );
  }
}

class AsiaLesson extends StatelessWidget {
  const AsiaLesson({Key? key, required this.geographyTopicsModel})
      : super(key: key);
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            geographyTopicsModel[2].title,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            geographyTopicsModel[2].asia![0].tema,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          Text(
            geographyTopicsModel[2].asia![1].title,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5),
          Image.network(
            geographyTopicsModel[2].asia![1].image!,
          ),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![1].tema,
          ),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![2].title,
            style: TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![2].tema,
          ),
          Text(
            geographyTopicsModel[2].asia![3].title,
            style: const TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5),
          Image.network(geographyTopicsModel[2].asia![3].image!),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![3].tema,
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 100,
            width: 300,
            child: Card(
              color: Colors.red[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Урматтуу окуучу!! Тест сынагынан өтүңүз.',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff42d792),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const AsiaTestPage(),
                          ),
                        );
                      },
                      child: const Text('ТЕСТ'),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
