part of 'hotel_bloc.dart';

sealed class HotelState extends Equatable {
  const HotelState();

  @override
  List<Object> get props => [];
}

final class HotelLoading extends HotelState {}

final class HotelSuccess extends HotelState {
  const HotelSuccess({
    required this.hotelModel,
    required this.currentIndex,
  });
  final HotelModel hotelModel;
  final int currentIndex;
}

final class HotelError extends HotelState {
  const HotelError({required this.text});
  final String text;
}
