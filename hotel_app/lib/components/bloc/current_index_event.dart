part of 'current_index_bloc.dart';

sealed class CaruselEvent extends Equatable {
  const CaruselEvent();

  @override
  List<Object> get props => [];
}

class LoadCarouselIndex extends CaruselEvent {}
