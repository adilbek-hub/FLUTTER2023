import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/education_bloc.dart';
import '../components/informatica_bolumu/error_text_widget.dart';
import '../components/informatica_bolumu/informatica_bolumu_bloc.dart';
import '../components/informatica_bolumu/loading_widget.dart';

class InformaticaTopics extends StatelessWidget {
  InformaticaTopics({super.key});
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
        builder: (context, state) {
      if (state is EducationLoading) {
        return const LoadingWidget();
      } else if (state is EducationSuccess) {
        return InformaticaBolumuWidget(
          pageController: _pageController,
          subjects2Text: state.subjects2,
        );
      } else if (state is EducationError) {
        return ErrorTextWidget(errorText: state.text);
      } else {
        return const Text('Unknown error');
      }
    });
  }
}
