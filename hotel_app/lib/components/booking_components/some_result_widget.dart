import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/hotel_bloc.dart';

class SumResultsWidget extends StatelessWidget {
  const SumResultsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          final tourPrice = state.bookingModel.tourPrice;
          final fuelCharge = state.bookingModel.fuelCharge;
          final serviceCharge = state.bookingModel.serviceCharge;
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Топ',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${state.bookingModel.tourPrice} ₽ ',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Топливный сбор',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${state.bookingModel.fuelCharge} ₽',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Сервисный сбор',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${state.bookingModel.serviceCharge} ₽',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'К оплате',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    '${tourPrice + fuelCharge + serviceCharge}',
                    style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          );
        } else {
          throw ('invalid state');
        }
      },
    );
  }
}
