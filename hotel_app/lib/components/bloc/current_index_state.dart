part of 'current_index_bloc.dart';

sealed class CaruselState extends Equatable {
  const CaruselState();

  @override
  List<Object> get props => [];
}

final class CaruselLoaded extends CaruselState {
  const CaruselLoaded(this.currentIndex);
  final int currentIndex;
  @override
  List<Object> get props => [currentIndex];
}

class CaruselError extends CaruselState {}
