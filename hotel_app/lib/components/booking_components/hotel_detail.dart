import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/hotel_bloc.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          return Table(children: [
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Вылет из',
                  style: TextStyle(
                    color: Color(0xff828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                state.bookingModel.departure,
                style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Страна, город',
                  style: TextStyle(
                    color: Color(0xff828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                state.bookingModel.arrivalCountry,
                style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Даты',
                  style: TextStyle(
                    color: Color(0xff828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                '${state.bookingModel.tourDateStart} - ${state.bookingModel.tourDateStop}',
                style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Кол-во ночей',
                  style: TextStyle(
                    color: Color(0xff828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                '${state.bookingModel.numberOfNights} ночей',
                style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            const TableRow(children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Отель',
                  style: TextStyle(
                    color: Color(0xff828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                'Steigenberger Makadi',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
            TableRow(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Text(
                    'Номер',
                    style: TextStyle(
                      color: Color(0xff828796),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  state.bookingModel.room,
                  style: const TextStyle(
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'Питание',
                  style: TextStyle(
                    color: Color(0xff828796),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                state.bookingModel.nutrition,
                style: const TextStyle(
                  color: Color(0xff000000),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ]),
          ]);
        } else {
          throw ('Invalid');
        }
      },
    );
  }
}
