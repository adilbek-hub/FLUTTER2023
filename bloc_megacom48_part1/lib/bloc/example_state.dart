part of 'example_bloc.dart';

@immutable
sealed class ExampleState {}

final class ExampleInitial extends ExampleState {}

final class ExampleLoading extends ExampleState {}

final class ExampleSuccess extends ExampleState {
  final String returnedData;

  ExampleSuccess({required this.returnedData});
}

final class ExampleError extends ExampleState {}
