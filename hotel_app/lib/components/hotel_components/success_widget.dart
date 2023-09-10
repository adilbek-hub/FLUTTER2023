import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/model/hotel_model.dart';
import '../../constants/app_size.dart';
import '../../constants/app_text_styles.dart';
import 'button_area.dart';
import 'like_container.dart';
import 'white_container.dart';

class SuccessWidget extends StatefulWidget {
  const SuccessWidget({Key? key, required this.hotelModel}) : super(key: key);
  final HotelModel hotelModel;

  @override
  State<SuccessWidget> createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
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
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CarouselSlider(
                          items: widget.hotelModel.imageUrls
                              .map(
                                (e) => SizedBox(
                                  width: width,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      e,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: true,
                              aspectRatio: 2,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              }),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 158),
                          child: Container(
                            height: 17,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: widget.hotelModel.imageUrls
                                  .asMap()
                                  .entries
                                  .map(
                                (e) {
                                  return GestureDetector(
                                    onTap: () =>
                                        carouselController.animateToPage(e.key),
                                    child: Container(
                                      width: currentIndex == e.key ? 7 : 7,
                                      height: 7.0,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 3),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: currentIndex == e.key
                                              ? Colors.black
                                              : Colors.grey),
                                    ),
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const LikeContainer(),
                  const SizedBox(height: 8),
                  Text(
                    widget.hotelModel.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.hotelModel.adress,
                    style: const TextStyle(
                      color: Color(0xff0D72FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'от ${widget.hotelModel.minimalPrice}₽',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        widget.hotelModel.priceForIt,
                        style: const TextStyle(
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
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 19),
                  const Text(
                    'Об отеле',
                    style: AppTextStyles.texts,
                  ),
                  const SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        '3-я линия',
                        style: TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        widget.hotelModel.aboutTheHotel.peculiarities[2],
                        style: const TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 14),
                    ],
                  ),
                  const SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.hotelModel.aboutTheHotel.peculiarities[3],
                        style: const TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        widget.hotelModel.aboutTheHotel.peculiarities[1],
                        style: const TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 14),
                    ],
                  ),
                  const SizedBox(height: 17),
                  Text(
                    widget.hotelModel.aboutTheHotel.description,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const WhiteContainer()
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          const ButtonArea(),
        ],
      ),
    );
  }
}
