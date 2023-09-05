import 'package:flutter/material.dart';
import '../components/hotel_components/carusel_images.dart';
import '../components/hotel_components/like_container.dart';
import '../constants/app_size.dart';
import '../constants/app_text_styles.dart';

class HotelNumber extends StatefulWidget {
  const HotelNumber({Key? key}) : super(key: key);

  @override
  State<HotelNumber> createState() => _HotelNumberState();
}

class _HotelNumberState extends State<HotelNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F9),
        appBar: AppBar(
          backgroundColor: const Color(0xffF6F6F9),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: const Center(
            child: Text(
              'Steigenberger Makadi',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 19),
                    const Center(
                      child: Text(
                        'Отель',
                        style: AppTextStyles.hotelStyle,
                      ),
                    ),
                    AppSize.height16,
                    // CaruselImages(),
                    const SizedBox(height: 16),
                    const LikeContainer(),
                    const SizedBox(height: 8),
                    const Text(
                      'Steigenberger Makadi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                      style: TextStyle(
                        color: Color(0xff0D72FF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          'от 134 673 ₽',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'за тур с перелётом',
                          style: TextStyle(
                            color: Color(0xff828796),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
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
