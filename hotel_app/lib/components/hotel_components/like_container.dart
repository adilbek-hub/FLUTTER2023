import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/hotel_bloc.dart';

class LikeContainer extends StatelessWidget {
  const LikeContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          return Row(
            children: [
              Container(
                width: 149,
                height: 29,
                color: const Color(0xfffff4cc),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      size: 15,
                      color: Color(0xffffa800),
                    ),
                    Text(
                      '${state.hotelModel.rating} ${state.hotelModel.ratingName}',
                      style: const TextStyle(
                        color: Color(0xffffa800),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        } else {
          return Text('Есть инвалидность');
        }
      },
    );
  }
}
