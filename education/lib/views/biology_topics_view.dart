import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/model/subjects.dart';
import 'package:education/pages/topic_pages_about_biology/kishsi_jana_janybar.dart';
import 'package:education/pages/topic_pages_about_biology/kletka.dart';
import 'package:education/pages/topic_pages_about_biology/mee.dart';
import 'package:education/pages/topic_pages_about_biology/nerv_sistemasy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../bloc/education_bloc.dart';
import '../components/biology_bolumu/biology_bolumu_bloc.dart';

class BiologyTopics extends StatelessWidget {
  BiologyTopics({super.key});
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const CupertinoActivityIndicator(color: Colors.red);
        } else if (state is EducationError) {
          return Text(state.text);
        } else if (state is EducationSuccess) {
          return BiologyBolumuWidget(
            pageController: _pageController,
            biologyBolumuTopicsModel: state.biologyTopicsModel,
          );
        } else {
          throw ('STATE cannot');
        }
      },
    );
  }
}
