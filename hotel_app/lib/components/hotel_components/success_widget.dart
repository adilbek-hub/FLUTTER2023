import 'package:flutter/material.dart';
import '../../constants/app_size.dart';
import '../../constants/app_text_styles.dart';
import 'button_area.dart';
import 'carusel_images.dart';
import 'like_container.dart';
import 'white_container.dart';

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
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 19),
                  Text(
                    'Об отеле',
                    style: AppTextStyles.texts,
                  ),
                  SizedBox(height: 21),
                  Row(
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
                  SizedBox(height: 21),
                  Row(
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
                  SizedBox(height: 17),
                  Text(
                    'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 16),
                  WhiteContainer()
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
