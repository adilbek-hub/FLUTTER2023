import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constants/app_size.dart';
import '../constants/app_text_styles.dart';
import 'hotel_components/essentials.dart';

class SuccessWidget extends StatefulWidget {
  const SuccessWidget({Key? key, required this.items}) : super(key: key);
  final List<String> items;

  @override
  State<SuccessWidget> createState() => _SuccessWidgetState();
}

class _SuccessWidgetState extends State<SuccessWidget> {
  @override
  Widget build(BuildContext context) {
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
                  CaruselImages(widget: widget),
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '3-я линия',
                        style: TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Платный Wi-Fi в фойе',
                        style: TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 14),
                    ],
                  ),
                  const SizedBox(height: 21),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '30 км до аэропорт',
                        style: TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '1 км до пляжа',
                        style: TextStyle(
                          color: Color(0xff828796),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 14),
                    ],
                  ),
                  const SizedBox(height: 17),
                  const Text(
                    'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xffFBFBFC),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Essentials(
                          assetName: 'assets/emoji-happy.svg',
                          text1: 'Удобства',
                          text2: 'Самое необходимое',
                          onPressed: () {},
                        ),
                        const Divider(
                          indent: 40,
                          endIndent: 16,
                        ),
                        Essentials(
                          assetName: 'assets/tick-square.svg',
                          text1: 'Удобства',
                          text2: 'Самое необходимое',
                          onPressed: () {},
                        ),
                        const Divider(
                          indent: 40,
                          endIndent: 16,
                        ),
                        Essentials(
                          assetName: 'assets/close-square.svg',
                          text1: 'Удобства',
                          text2: 'Самое необходимое',
                          onPressed: () {},
                        ),
                        const Divider(
                          indent: 40,
                          endIndent: 16,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff0d72ff),
                      elevation: 0,
                      padding: const EdgeInsets.only(
                          left: 16, top: 12, right: 16, bottom: 28),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      minimumSize: const Size(500, 40),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'К выбору номеру',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CaruselImages extends StatefulWidget {
  const CaruselImages({super.key, required this.widget});
  final SuccessWidget widget;

  @override
  State<CaruselImages> createState() => _CaruselImagesState();
}

class _CaruselImagesState extends State<CaruselImages> {
  CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        InkWell(
          onTap: () {
            print(currentIndex);
          },
          child: CarouselSlider(
            items: widget.widget.items
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
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: widget.widget.items.asMap().entries.map(
                  (e) {
                    return GestureDetector(
                      onTap: () => carouselController.animateToPage(e.key),
                      child: Container(
                        width: currentIndex == e.key ? 7 : 7,
                        height: 7.0,
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
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
    );
  }
}
