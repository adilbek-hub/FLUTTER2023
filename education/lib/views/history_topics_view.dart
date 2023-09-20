import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/model/subjects.dart';
import 'package:education/pages/topic_pages_about_history/nemis_koroldugu.dart';
import 'package:education/pages/topic_pages_about_history/rim.dart';
import 'package:education/pages/topic_pages_about_history/bairky_germandyktar.dart';
import 'package:education/pages/topic_pages_about_history/italia_5_10_vek.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../bloc/education_bloc.dart';
import '../components/informatica_bolumu/history_bolumu_bloc.dart';

class HistoryTopics extends StatelessWidget {
  HistoryTopics({super.key});
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const CupertinoActivityIndicator();
        } else if (state is EducationError) {
          return Text(state.text);
        } else if (state is EducationSuccess) {
          return HistoryBolumuWidget(
            pageController: _pageController,
            historyTopicsModel: state.historyTopicsModel,
          );
        } else {
          throw ('ERROR');
        }
      },
    );
  }
}
