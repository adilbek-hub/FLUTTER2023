import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/constants/app_size.dart';
import 'package:hotel_app/model/hotel_model.dart';

import '../constants/app_text_styles.dart';
import '../service/service.dart';
import 'package:http/http.dart' as http;

class HotelView extends StatefulWidget {
  const HotelView({super.key});

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  List images = [
    'assets/hotelImage.png',
    'assets/hotelImage.png',
    'assets/hotelImage.png'
  ];
  int currentIndex = 0;

  CarouselController carouselController = CarouselController();
  HotelModel? hotelModel;
  Future<void> fetchData() async {
    hotelModel = await HotelService(client: http.Client()).getData();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 19),
                  const Text(
                    'Отель',
                    style: AppTextStyles.hotelStyle,
                  ),
                  AppSize.height16,
                  Stack(
                    children: [
                      InkWell(
                        onTap: () {
                          print(currentIndex);
                        },
                        child: CarouselSlider(
                          items: images
                              .map(
                                (e) => Container(
                                  width: width,
                                  height: 257,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Image.asset(
                                    '$e',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                              .toList(),
                          carouselController: carouselController,
                          options: CarouselOptions(
                              scrollPhysics: const BouncingScrollPhysics(),
                              autoPlay: false,
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: images.asMap().entries.map(
                            (e) {
                              return GestureDetector(
                                onTap: () =>
                                    carouselController.animateToPage(e.key),
                                child: Container(
                                  width: currentIndex == e.key ? 7 : 7,
                                  height: 7.0,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: currentIndex == e.key
                                          ? Colors.red
                                          : Colors.white),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        width: 149,
                        height: 29,
                        color: const Color(0xfffff4cc),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Color(0xffffa800),
                            ),
                            Text(
                              '5 Превосходно',
                              style: TextStyle(
                                color: Color(0xffffa800),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
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
        ),
      ),
    );
  }
}
