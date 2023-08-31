part of 'education_bloc.dart';

sealed class EducationState extends Equatable {
  const EducationState();

  @override
  List<Object> get props => [];
}

class EducationLoading extends EducationState {}

class EducationSuccess extends EducationState {
  const EducationSuccess({required this.subjects2});
  final InformaticaTopics subjects2;
}

class EducationError extends EducationState {
  const EducationError({required this.text});
  final String text;
}
