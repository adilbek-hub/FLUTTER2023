import 'package:education/model/biology_model.dart';
import 'package:education/services/biology_topics_service.dart';
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
    this.subjectService,
    this.historyTopicsService,
    this.biologyTopicsService,
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<EducationRefreshEvent>(_getSubjectsByInformation);
  }

  final InformaticaTopicsService subjectService;
  final HistoryTopicsService historyTopicsService;
  final BiologyTopicsService biologyTopicsService;
  Future<void> _getSubjectsByInformation(
      EducationRefreshEvent event, Emitter<EducationState> emit) async {
    final dataSubject = await subjectService.getData();
    final dataHistory = await historyTopicsService.getData();
    final dataBiology = await biologyTopicsService.getData();
    if (dataSubject != null && dataHistory != null && dataBiology != null) {
      emit(
        EducationSuccess(
          subjects2: dataSubject,
          historyTopicsModel: dataHistory,
          biologyTopicsModel: dataBiology,
        ),
      );
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}
