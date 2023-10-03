import 'package:education/model/biology_model.dart';
import 'package:education/model/geography_model.dart';
import 'package:education/model/model_test/geography_test/europe_capitals.dart';
import 'package:education/model/model_test/usa_test.dart';
import 'package:education/model/subjects_topics_model.dart';
import 'package:education/model/test_model.dart';
import 'package:education/services/biology_topics_service.dart';
import 'package:education/services/geography_topics_service.dart';
import 'package:education/services/service_test/geography_test/europe_capitals.dart';
import 'package:education/services/service_test/geography_test/usa.dart';
import 'package:education/services/subjects_topics_service.dart';
import 'package:education/services/test_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/history_model.dart';
import '../model/informatica_model.dart';
import '../services/history_toics_service.dart';
import '../services/informatica_topics_service.dart';
part 'education_event.dart';
part 'education_state.dart';

class SubjectsBloc extends Bloc<EducationEvent, EducationState> {
  SubjectsBloc(
    this.subjectsTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent1>(_getSubjects);
  }
  final SubjectsTopicsService subjectsTopicsService;

  Future<void> _getSubjects(
      FetchDataEvent1 event, Emitter<EducationState> emit) async {
    final dataSubjects = await subjectsTopicsService.getData();

    if (dataSubjects != null) {
      emit(
        SubjectsSuccess(
          subjectsTopicsModel: dataSubjects,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class InformaticaBloc extends Bloc<EducationEvent, EducationState> {
  InformaticaBloc(
    this.informaticaTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent2>(_getInformatica);
  }
  final InformaticaTopicsService informaticaTopicsService;

  Future<void> _getInformatica(
      FetchDataEvent2 event, Emitter<EducationState> emit) async {
    final dataInformatica = await informaticaTopicsService.getData();
    if (dataInformatica != null) {
      emit(
        InformaticaSuccess(
          informaticaModel: dataInformatica,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class HistoryBloc extends Bloc<EducationEvent, EducationState> {
  HistoryBloc(
    this.historyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent3>(_getHistory);
  }
  final HistoryTopicsService historyTopicsService;

  Future<void> _getHistory(
      FetchDataEvent3 event, Emitter<EducationState> emit) async {
    final dataHistory = await historyTopicsService.getData();
    if (dataHistory != null) {
      emit(
        HistorySuccess(
          historyTopicsModel: dataHistory,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class BiologyBloc extends Bloc<EducationEvent, EducationState> {
  BiologyBloc(
    this.biologyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent4>(_getBiology);
  }
  final BiologyTopicsService biologyTopicsService;

  Future<void> _getBiology(
      FetchDataEvent4 event, Emitter<EducationState> emit) async {
    final dataBiology = await biologyTopicsService.getData();
    if (dataBiology != null) {
      emit(
        BiologySuccess(
          biologyTopicsModel: dataBiology,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class GeographyBloc extends Bloc<EducationEvent, EducationState> {
  GeographyBloc(
    this.geographyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent5>(_getGeography);
  }
  final GeograhyTopicsService geographyTopicsService;

  Future<void> _getGeography(
      FetchDataEvent5 event, Emitter<EducationState> emit) async {
    final dataGeography = await geographyTopicsService.getData();
    if (dataGeography != null) {
      emit(
        GeographySuccess(
          geographyTopicsModel: dataGeography,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class TestsBloc extends Bloc<EducationEvent, EducationState> {
  TestsBloc(
    this.testTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEvent6>(_getTest);
  }
  final TestTopicsService testTopicsService;

  Future<void> _getTest(
      FetchDataEvent6 event, Emitter<EducationState> emit) async {
    final dataTest = await testTopicsService.getData();
    if (dataTest != null) {
      emit(
        TestSuccess(
          testTopicsModel: dataTest,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class EuropeCapitalTestBloc extends Bloc<EducationEvent, EducationState> {
  EuropeCapitalTestBloc({required this.geographyTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEuropeCapitalTest>(_getGeographyTest);
  }
  final EuropeCapitalsTestTopicsService geographyTestTopicsService;

  Future<void> _getGeographyTest(
      FetchDataEuropeCapitalTest event, Emitter<EducationState> emit) async {
    final geographyDataTest = await geographyTestTopicsService.getData();
    if (geographyDataTest != null) {
      emit(
        EuropeCapitalTestSuccess(
          europeCapitalTestToicsModel: geographyDataTest,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}

class UsaTestBloc extends Bloc<EducationEvent, EducationState> {
  UsaTestBloc({required this.usaTestTopicsService})
      : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<FetchDataEuropeCapitalTest>(_getGeographyTest);
  }
  final UsaTestTopicsService usaTestTopicsService;

  Future<void> _getGeographyTest(
      FetchDataEuropeCapitalTest event, Emitter<EducationState> emit) async {
    final geographyDataTest = await geographyTestTopicsService.getData();
    if (geographyDataTest != null) {
      emit(
        EuropeCapitalTestSuccess(
          europeCapitalTestToicsModel: geographyDataTest,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}
