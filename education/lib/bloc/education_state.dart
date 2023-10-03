part of 'education_bloc.dart';

sealed class EducationState extends Equatable {
  const EducationState();

  @override
  List<Object> get props => [];
}

class EducationLoading extends EducationState {}

class SubjectsSuccess extends EducationState {
  const SubjectsSuccess({required this.subjectsTopicsModel});
  final List<SubjectsTopicsModel> subjectsTopicsModel;
}

class InformaticaSuccess extends EducationState {
  const InformaticaSuccess({required this.informaticaModel});
  final InformaticaTopics informaticaModel;
}

class HistorySuccess extends EducationState {
  const HistorySuccess({required this.historyTopicsModel});
  final List<HistoryTopicsModel> historyTopicsModel;
}

class BiologySuccess extends EducationState {
  const BiologySuccess({required this.biologyTopicsModel});
  final List<BiologyTopicsModel> biologyTopicsModel;
}

class GeographySuccess extends EducationState {
  const GeographySuccess({required this.geographyTopicsModel});
  final List<GeographyTopicsModel> geographyTopicsModel;
}

class TestSuccess extends EducationState {
  const TestSuccess({required this.testTopicsModel});
  final List<TestToicsModel> testTopicsModel;
}

class EuropeCapitalTestSuccess extends EducationState {
  const EuropeCapitalTestSuccess({required this.europeCapitalTestToicsModel});
  final List<EuropeCapitalsToicsModel> europeCapitalTestToicsModel;
}

class UsaTestSuccess extends EducationState {
  const UsaTestSuccess({required this.usaTestToicsModel});
  final List<UsaTestToicsModel> usaTestToicsModel;
}

class AsiaTestSuccess extends EducationState {
  const AsiaTestSuccess({required this.asiaTestToicsModel});
  final List<AsiaTestToicsModel> asiaTestToicsModel;
}

class WorlCapitalsTestSuccess extends EducationState {
  const WorlCapitalsTestSuccess({required this.worldCapitalsTestToicsModel});
  final List<WorldCapitalToicsModel> worldCapitalsTestToicsModel;
}

class EducationError extends EducationState {
  const EducationError({required this.text});
  final String text;
}
