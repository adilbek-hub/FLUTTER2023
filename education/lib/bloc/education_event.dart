part of 'education_bloc.dart';

sealed class EducationEvent extends Equatable {
  const EducationEvent();

  @override
  List<Object> get props => [];
}

final class EducationRefreshEvent extends EducationEvent {}
