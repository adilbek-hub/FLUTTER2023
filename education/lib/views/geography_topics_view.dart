import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/components/geography_bolumu/geography_bolumu_bloc.dart';
import 'package:education/pages/topic_pages_about_geography/topic_pages_about_geography.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:education/model/geography_model.dart';
import '../bloc/education_bloc.dart';

class GeographyTopics extends StatelessWidget {
  GeographyTopics({
    super.key,
  });
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EducationBloc, EducationState>(
      builder: (context, state) {
        if (state is EducationLoading) {
          return const CupertinoActivityIndicator(color: Colors.blue);
        } else if (state is EducationError) {
          return Text(state.text);
        } else if (state is EducationSuccess) {
          return GeographyBolumuWidget(
            geographyTopicsModel: state.geographyTopicsModel,
            pageController: _pageController,
          );
        } else {
          return throw ('ERROR unknown');
        }
      },
    );
  }
}
