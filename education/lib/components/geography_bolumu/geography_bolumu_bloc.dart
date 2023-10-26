import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../model/geography_model.dart';
import '../../pages/topic_pages_about_geography/asia_continent.dart';
import '../../pages/topic_pages_about_geography/europe_continent.dart';
import '../../pages/topic_pages_about_geography/usa.dart';
import '../../pages/topic_pages_about_geography/world_capitals.dart';

class GeographyBolumuWidget extends StatefulWidget {
  const GeographyBolumuWidget({
    super.key,
    required PageController pageController,
    required this.geographyTopicsModel,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  State<GeographyBolumuWidget> createState() => _GeographyBolumuWidgetState();
}

class _GeographyBolumuWidgetState extends State<GeographyBolumuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            controller: widget._pageController,
            scrollDirection: Axis.horizontal,
            itemCount: widget.geographyTopicsModel.length,
            itemBuilder: (BuildContext context, int index) {
              final geography = widget.geographyTopicsModel[index];
              return Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: InkWell(
                    onTap: () {
                      forPages(index);
                    },
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
                              geography.title,
                              style: const TextStyle(
                                  fontSize: 20,
                                  // fontFamily: 'Knewave-Regular',
                                  color: Color(0xff47455f),
                                  fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              dropCap: DropCap(
                                width: 100,
                                height: 100,
                                child: Image.network(geography.image),
                              ),
                            ),
                            const Divider(),
                            Text(
                              geography.description,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Avenir',
                                  color: Color.fromARGB(255, 186, 148, 148),
                                  fontWeight: FontWeight.w400),
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
          controller: widget._pageController,
          count: widget.geographyTopicsModel.length,
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

  int currentIndex = 0;
  void forPages(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return currentIndex == 0
              ? const EuropeContinenti(
                  // geographyTopicsModel: widget.geographyTopicsModel,
                  )
              : currentIndex == 1
                  ? UnitedStates(
                      geographyTopicsModel: widget.geographyTopicsModel,
                    )
                  : currentIndex == 2
                      ? const AsiaContinenti(
                          // geographyTopicsModel: widget.geographyTopicsModel,
                          )
                      : WorldCapitals(
                          geographyTopicsModel: widget.geographyTopicsModel,
                        );
        },
      ),
    );
    setState(() {
      currentIndex = index;
    });
  }
}
