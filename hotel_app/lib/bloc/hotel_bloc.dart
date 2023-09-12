import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hotel_app/model/hotel_model.dart';
import 'package:hotel_app/service/hotel_number_service.dart';

import '../model/booking_model.dart';
import '../model/hotel_number_model.dart';
import '../service/booking_service.dart';
import '../service/hotel_service.dart';

part 'hotel_event.dart';
part 'hotel_state.dart';

class HotelBloc extends Bloc<HotelEvent, HotelState> {
  HotelBloc({
    required this.service,
    required this.hotelNumberService,
    required this.bookingService,
  }) : super(HotelLoading()) {
    on<HotelEvent>((event, emit) {});
    on<HotelRefreshEvent>(_getServiseByInformation);
  }
  final HotelService service;
  final HotelNumberService hotelNumberService;
  final BookingService bookingService;

  Future<void> _getServiseByInformation(
      HotelRefreshEvent event, Emitter<HotelState> emit) async {
    final data = await service.getData();
    final dataHotelNumber = await hotelNumberService.getData();
    final dataBookingNumber = await bookingService.getData();
    if (data != null && dataHotelNumber != null && dataBookingNumber != null) {
      emit(HotelSuccess(
        hotelModel: data,
        hotelNumberModel: dataHotelNumber,
        bookingModel: dataBookingNumber,
      ));
    } else {
      emit(
        const HotelError(text: 'HotelError ERROR'),
      );
    }
  }
}