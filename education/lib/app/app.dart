import 'package:education/bloc/education_bloc.dart';
import 'package:education/services/biology_topics_service.dart';
import 'package:education/services/geography_topics_service.dart';
import 'package:education/services/history_toics_service.dart';
import 'package:education/services/service_test/biology_test/kletka_service.dart';
import 'package:education/services/service_test/biology_test/man_and_animal.dart';
import 'package:education/services/service_test/biology_test/mee_service.dart';
import 'package:education/services/service_test/biology_test/nerv_sistemasy_service.dart';
import 'package:education/services/service_test/geography_test/asia.dart';
import 'package:education/services/service_test/geography_test/europe_capitals.dart';
import 'package:education/services/service_test/geography_test/usa.dart';
import 'package:education/services/service_test/geography_test/world_capitals.dart';
import 'package:education/services/subjects_topics_service.dart';
import 'package:education/services/test_service.dart';
import 'package:education/views/pages_nav_bar.dart';
import 'package:education/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/informatica_topics_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SubjectsBloc>(
          create: (BuildContext context) => SubjectsBloc(subjectsTopicsService)
            ..add(
              FetchDataEvent1(),
            ),
        ),
        BlocProvider<InformaticaBloc>(
          create: (BuildContext context) =>
              InformaticaBloc(inforMaticaTopicsService)..add(FetchDataEvent2()),
        ),
        BlocProvider<HistoryBloc>(
          create: (BuildContext context) =>
              HistoryBloc(historyTopicsService)..add(FetchDataEvent3()),
        ),
        BlocProvider<BiologyBloc>(
          create: (BuildContext context) =>
              BiologyBloc(biologyTopicsService)..add(FetchDataEvent4()),
        ),
        BlocProvider<GeographyBloc>(
          create: (BuildContext context) =>
              GeographyBloc(geographyTopicsService)..add(FetchDataEvent5()),
        ),
        BlocProvider<TestsBloc>(
          create: (BuildContext context) =>
              TestsBloc(testTopicsService)..add(FetchDataEvent6()),
        ),
        BlocProvider<EuropeCapitalTestBloc>(
          create: (BuildContext context) => EuropeCapitalTestBloc(
              geographyTestTopicsService: europeCApitalsTestTopicsService)
            ..add(FetchDataEuropeCapitalTest()),
        ),
        BlocProvider<UsaTestBloc>(
          create: (BuildContext context) =>
              UsaTestBloc(usaTestTopicsService: usaTestTopicsService)
                ..add(FetchDataUsaTest()),
        ),
        BlocProvider<AsiaTestBloc>(
          create: (BuildContext context) =>
              AsiaTestBloc(asiaTestTopicsService: asiaTestTopicsService)
                ..add(FetchDataAsiaTest()),
        ),
        BlocProvider<ManAndAnimalTestBloc>(
          create: (BuildContext context) => ManAndAnimalTestBloc(
              manAndAnimalTestTopicsService: manAndAnimalTestTopicsService)
            ..add(FetchDataManAndAnimalTest()),
        ),
        BlocProvider<KletkaTestBloc>(
          create: (BuildContext context) =>
              KletkaTestBloc(kletkaTestTopicsService: kletkaTopicsService)
                ..add(FetchKletkaTest()),
        ),
        BlocProvider<NervSistemasyTestBloc>(
          create: (BuildContext context) => NervSistemasyTestBloc(
              nervSistemasyTestTopicsService: nervSistemasyTestTopicsService)
            ..add(
              FetchNervSistemasyTest(),
            ),
        ),
        BlocProvider<MeeTestBloc>(
          create: (BuildContext context) =>
              MeeTestBloc(meeTestTopicsService: meeTestTopicsService)
                ..add(
                  FetchMeeTest(),
                ),
        ),
      ],
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
