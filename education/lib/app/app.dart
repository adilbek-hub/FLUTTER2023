import 'package:education/bloc/education_bloc.dart';
import 'package:education/services/biology_topics_service.dart';
import 'package:education/services/history_toics_service.dart';
import 'package:education/views/pages_nav_bar.dart';
import 'package:education/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/informatica_topics_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EducationBloc(
        subjectService,
        historyTopicsService,
        biologyTopicsService,
      )..add(EducationRefreshEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const HomeView(),
          // 'HomeView': (context) => const HomeView(),
          'BooksView': (context) => const NavBarPages(),
        },
      ),
    );
  }
}
