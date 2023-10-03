part of 'education_bloc.dart';

sealed class EducationEvent extends Equatable {
  const EducationEvent();

  @override
  List<Object> get props => [];
}

final class FetchDataEvent1 extends EducationEvent {}

final class FetchDataEvent2 extends EducationEvent {}

final class FetchDataEvent3 extends EducationEvent {}

final class FetchDataEvent4 extends EducationEvent {}

final class FetchDataEvent5 extends EducationEvent {}

final class FetchDataEvent6 extends EducationEvent {}

final class FetchDataGeographyTest extends EducationEvent {}
