import 'package:flutter/material.dart';
import 'package:hotel_app/components/hotel_components/like_container.dart';
import '../model/hotel_model.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key, required this.hotelModel}) : super(key: key);
  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Center(
          child: Text(
            'Бронирование',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LikeContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
