import 'package:education/components/custom_clipper_path.dart';
import 'package:education/components/custom_corner_shape.dart';
import 'package:education/components/custom_triangle.dart';
import 'package:education/constants/app_color.dart';
import 'package:education/pages/after_loading_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: 0.5,
                  child: ClipPath(
                    clipper: CustomClipperPath(),
                    child: Container(
                      color: Colors.deepOrangeAccent,
                      height: 200,
                    ),
                  ),
                ),
                ClipPath(
                  clipper: CustomClipperPath(),
                  child: Container(
                    color: Colors.red,
                    height: 190,
                  ),
                ),
                Positioned(
                  left: 30 * 1.7,
                  top: 50 * 5.1,
                  child: Text(
                    'ОКУУЧУ бурчу',
                    style: GoogleFonts.lobster(
                      fontSize: 30,
                      color: const Color.fromARGB(255, 26, 208, 190),
                    ),
                  ),
                ),
                SizedBox(
                  height: 460,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Stack(
                        children: [
                          const Image(
                              width: 150,
                              height: 150,
                              image: AssetImage(
                                  'assets/images/capitals/corner.png')),
                          Positioned(
                            left: 25,
                            top: 15,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const AfterLoading(),
                                  ),
                                );
                              },
                              child: const Image(
                                width: 100,
                                height: 100,
                                color: Color.fromARGB(255, 26, 208, 190),
                                image: AssetImage(
                                  'assets/icons/icon/group.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Image(
                        width: 169,
                        height: 401,
                        image: AssetImage('assets/icons/icon/frame.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomPaint(
                  size: const Size(100, 100), // set the size of the widget
                  painter: CustomCornerShape(), // use the custom painter
                ),
                ClipPath(
                  clipper: TriangleClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: const Color.fromARGB(255, 248, 242, 138),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
