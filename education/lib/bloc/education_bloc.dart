import 'package:education/model/biology_model.dart';
import 'package:education/model/geography_model.dart';
import 'package:education/model/subjects_topics_model.dart';
import 'package:education/services/biology_topics_service.dart';
import 'package:education/services/geography_topics_service.dart';
import 'package:education/services/subjects_topics_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../model/history_model.dart';
import '../model/informatica_model.dart';
import '../services/history_toics_service.dart';
import '../services/informatica_topics_service.dart';
part 'education_event.dart';
part 'education_state.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  EducationBloc(
    this.subjectsTopicsService,
    this.subjectService,
    this.historyTopicsService,
    this.biologyTopicsService,
    this.geographyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<EducationRefreshEvent>(_getSubjectsByInformation);
  }
  final SubjectsTopicsService subjectsTopicsService;
  final InformaticaTopicsService subjectService;
  final HistoryTopicsService historyTopicsService;
  final BiologyTopicsService biologyTopicsService;
  final GeograhyTopicsService geographyTopicsService;
  Future<void> _getSubjectsByInformation(
      EducationRefreshEvent event, Emitter<EducationState> emit) async {
    final dataSubjects = await subjectsTopicsService.getData();
    final dataSubject = await subjectService.getData();
    final dataHistory = await historyTopicsService.getData();
    final dataBiology = await biologyTopicsService.getData();
    final dataGeography = await geographyTopicsService.getData();

    if (dataSubjects != null &&
        dataSubject != null &&
        dataHistory != null &&
        dataBiology != null &&
        dataGeography != null) {
      emit(
        EducationSuccess(
          subjectsTopicsModel: dataSubjects,
          subjects2: dataSubject,
          historyTopicsModel: dataHistory,
          biologyTopicsModel: dataBiology,
          geographyTopicsModel: dataGeography,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}
