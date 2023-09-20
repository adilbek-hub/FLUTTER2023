part of 'education_bloc.dart';

sealed class EducationState extends Equatable {
  const EducationState();

  @override
  List<Object> get props => [];
}

class EducationLoading extends EducationState {}

class EducationSuccess extends EducationState {
  const EducationSuccess({
    required this.subjects2,
    required this.historyTopicsModel,
  });
  final InformaticaTopics subjects2;
  final List<HistoryTopicsModel> historyTopicsModel;
}

class EducationError extends EducationState {
  const EducationError({required this.text});
  final String text;
}
