import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/informatica_model.dart';
import '../services/subject_service.dart';

part 'education_event.dart';
part 'education_state.dart';

class EducationBloc extends Bloc<EducationEvent, EducationState> {
  EducationBloc(this.subjectService) : super(EducationLoading()) {
    on<EducationEvent>((event, emit) {});
    on<EducationRefreshEvent>(_getSubjectsByInformation);
  }

  final SubjectService subjectService;
  Future<void> _getSubjectsByInformation(
      EducationRefreshEvent event, Emitter<EducationState> emit) async {
    final subjects = await subjectService.getData();
    if (subjects != null) {
      emit(EducationSuccess(subjects2: subjects));
    } else {
      emit(const EducationError(text: 'EDUCATIONERROR'));
    }
  }
}
