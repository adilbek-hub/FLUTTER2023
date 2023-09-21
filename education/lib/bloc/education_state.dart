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
    required this.biologyTopicsModel,
    required this.geographyTopicsModel,
  });
  final InformaticaTopics subjects2;
  final List<HistoryTopicsModel> historyTopicsModel;
  final List<BiologyTopicsModel> biologyTopicsModel;
  final List<GeographyTopicsModel> geographyTopicsModel;
}

class EducationError extends EducationState {
  const EducationError({required this.text});
  final String text;
}
