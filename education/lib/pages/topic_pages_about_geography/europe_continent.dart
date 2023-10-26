import 'package:education/components/geography_bolumu/europe_countries_lesson.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:education/bloc/education_bloc.dart';
import 'package:education/components/informatica_bolumu/loading_widget.dart';

class EuropeContinenti extends StatelessWidget {
  const EuropeContinenti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<GeographyBloc, EducationState>(
          builder: (context, state) {
            if (state is EducationLoading) {
              return const LoadingWidget();
            } else if (state is EducationError) {
              return Center(child: Text(state.text));
            } else if (state is GeographySuccess) {
              return EuropeCountriesLesson(
                geographyTopicsModel: state.geographyTopicsModel,
              );
            } else {
              return throw ('ERROR Unknown');
            }
          },
        ),
      ),
    );
  }
}
