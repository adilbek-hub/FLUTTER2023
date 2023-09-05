import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/model/hotel_model.dart';

import '../service/service.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc({
    required this.service,
  }) : super(HotelLoading()) {
    on<HotelEvent>((event, emit) {});
    on<HotelRefreshEvent>(_getServiseByInformation);
  }
  final HotelService service;
  int currentIndex = 0;
  Future<void> _getServiseByInformation(
      HotelRefreshEvent event, Emitter<HotelState> emit) async {
    final data = await service.getData();
    if (data != null) {
      emit(HotelSuccess(hotelModel: data, currentIndex: currentIndex));
    } else {
      emit(
        const HotelError(text: 'HotelError ERROR'),
      );
    }
  }
}
