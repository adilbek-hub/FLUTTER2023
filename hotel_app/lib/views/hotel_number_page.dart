import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/model/hotel_model.dart';
import 'package:hotel_app/views/booking_page.dart';
import 'package:text_scroll/text_scroll.dart';

import '../bloc/hotel_bloc.dart';

class HotelNumber extends StatefulWidget {
  const HotelNumber({Key? key}) : super(key: key);

  @override
  State<HotelNumber> createState() => _HotelNumberState();
}

class _HotelNumberState extends State<HotelNumber> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: BlocBuilder<HotelBloc, HotelState>(
        builder: (context, state) {
          if (state is HotelSuccess) {
            return Scaffold(
              backgroundColor: const Color(0xffF6F6F9),
              appBar: AppBar(
                toolbarHeight: 100,
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                title: Center(
                  child: TextScroll(
                    state.hotelModel.name,
                    style: const TextStyle(
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    print(currentIndex);
                                  },
                                  child: CarouselSlider(
                                    items: state.hotelModel.imageUrls
                                        .map(
                                          (e) => SizedBox(
                                            width: width,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                        scrollPhysics:
                                            const BouncingScrollPhysics(),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 158),
                                    child: Container(
                                      height: 17,
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: state.hotelModel.imageUrls
                                            .asMap()
                                            .entries
                                            .map(
                                          (e) {
                                            return GestureDetector(
                                              onTap: () => carouselController
                                                  .animateToPage(e.key),
                                              child: Container(
                                                width: currentIndex == e.key
                                                    ? 7
                                                    : 7,
                                                height: 7.0,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                            const SizedBox(height: 8),
                            const Text(
                              'Стандартный с видом на бассейн или сад',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Row(
                              children: [
                                SizedBox(width: 15),
                                Text(
                                  'Все включено',
                                  style: TextStyle(
                                    color: Color(0xff828796),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 28),
                                Text(
                                  'Кондиционер',
                                  style: TextStyle(
                                    color: Color(0xff828796),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 13),
                            Container(
                              width: 210,
                              decoration: BoxDecoration(
                                color: const Color(0xffACDBFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 5, bottom: 5),
                                    child: Text(
                                      'Подробнее о номере',
                                      style: TextStyle(
                                          color: Color(0xff0D72FF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 5, bottom: 5),
                                    child: Icon(
                                      CupertinoIcons.forward,
                                      color: Color(0xff0D72FF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Row(
                              children: [
                                Text(
                                  '186 600 ₽',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'за 7 ночей с перелётом',
                                  style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(height: 19),
                            InkWell(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BookingPage(),
                                  )),
                              child: const CustomButton(text: 'Выбрать номер'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 19),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    print(currentIndex);
                                  },
                                  child: CarouselSlider(
                                    items: state.hotelModel.imageUrls
                                        .map(
                                          (e) => SizedBox(
                                            width: width,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                        scrollPhysics:
                                            const BouncingScrollPhysics(),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 158),
                                    child: Container(
                                      height: 17,
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: state.hotelModel.imageUrls
                                            .asMap()
                                            .entries
                                            .map(
                                          (e) {
                                            return GestureDetector(
                                              onTap: () => carouselController
                                                  .animateToPage(e.key),
                                              child: Container(
                                                width: currentIndex == e.key
                                                    ? 7
                                                    : 7,
                                                height: 7.0,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
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
                            const SizedBox(height: 8),
                            const Text(
                              'Стандартный с видом на бассейн или сад',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Row(
                              children: [
                                SizedBox(width: 15),
                                Text(
                                  'Все включено',
                                  style: TextStyle(
                                    color: Color(0xff828796),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: 28),
                                Text(
                                  'Кондиционер',
                                  style: TextStyle(
                                    color: Color(0xff828796),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 13),
                            Container(
                              width: 210,
                              decoration: BoxDecoration(
                                color: const Color(0xffACDBFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 5, bottom: 5),
                                    child: Text(
                                      'Подробнее о номере',
                                      style: TextStyle(
                                          color: Color(0xff0D72FF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, top: 5, bottom: 5),
                                    child: Icon(
                                      CupertinoIcons.forward,
                                      color: Color(0xff0D72FF),
                                      size: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Row(
                              children: [
                                Text(
                                  '186 600 ₽',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'за 7 ночей с перелётом',
                                  style: TextStyle(
                                      color: Color(0xff828796),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(height: 19),
                            Container(
                              height: 48,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Выбрать номер',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return throw ('Invalid');
          }
        },
      ),
    );
  }
}
