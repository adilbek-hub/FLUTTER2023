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
  ) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<EducationRefreshEvent>(_getSubjectsByInformation);
  }

  final InformaticaTopicsService subjectService;
  final HistoryTopicsService historyTopicsService;
  Future<void> _getSubjectsByInformation(
      EducationRefreshEvent event, Emitter<EducationState> emit) async {
    final dataSubject = await subjectService.getData();
    final dataHistory = await historyTopicsService.getData();
    if (dataSubject != null && dataHistory != null) {
      emit(EducationSuccess(
          subjects2: dataSubject, historyTopicsModel: dataHistory));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}
