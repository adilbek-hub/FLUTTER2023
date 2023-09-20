import 'package:auto_size_text/auto_size_text.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/model/biology_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BiologyBolumuWidget extends StatelessWidget {
  const BiologyBolumuWidget({
    super.key,
    required PageController pageController,
    required this.biologyBolumuTopicsModel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<BiologyTopicsModel> biologyBolumuTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            itemCount: biologyBolumuTopicsModel.length,
            itemBuilder: (BuildContext context, int index) {
              final biology = biologyBolumuTopicsModel[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 215, 227, 226),
                            offset: Offset(-12, 12),
                            blurRadius: 8,
                          ),
                        ],
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 184, 243, 235),
                            Color.fromARGB(255, 254, 242, 242)
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DropCapText(
                              biology.title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  // fontFamily: 'Knewave-Regular',
                                  color: Color(0xff47455f),
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              dropCap: DropCap(
                                width: 100,
                                height: 100,
                                child: Image.asset(biology.image),
                              ),
                            ),
                            const Divider(),
                            AutoSizeText(
                              biology.description,
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Avenir',
                                  color: Color.fromARGB(255, 186, 148, 148),
                                  fontWeight: FontWeight.w400),
                              maxFontSize: 15.0,
                              minFontSize: 10.0,
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: biologyBolumuTopicsModel.length,
          effect: JumpingDotEffect(
            activeDotColor: Colors.deepPurple,
            dotColor: Colors.deepPurple.shade100,
            dotHeight: 15,
            dotWidth: 15,
            spacing: 16,
            jumpScale: 3,
          ),
        ),
      ],
    );
  }
}
