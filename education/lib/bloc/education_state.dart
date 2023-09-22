part of 'education_bloc.dart';

sealed class EducationState extends Equatable {
  const EducationState();

  @override
  List<Object> get props => [];
}

class EducationLoading extends EducationState {}

class EducationSuccess extends EducationState {
  const EducationSuccess({
    required this.subjectsTopicsModel,
    required this.subjects2,
    required this.historyTopicsModel,
    required this.biologyTopicsModel,
    required this.geographyTopicsModel,
  });
  // төрт предмет
  final List<SubjectsTopicsModel> subjectsTopicsModel;
  // информатика предмет
  final InformaticaTopics subjects2;
  // история предмет
  final List<HistoryTopicsModel> historyTopicsModel;
  // биология предмет
  final List<BiologyTopicsModel> biologyTopicsModel;
  // география предмет
  final List<GeographyTopicsModel> geographyTopicsModel;
}

class EducationError extends EducationState {
  const EducationError({required this.text});
  final String text;
}
