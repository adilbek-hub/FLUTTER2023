// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'success_widget.dart';

// class CaruselImages extends StatefulWidget {
//   const CaruselImages({super.key, required this.widget});
//   final SuccessWidget widget;

//   @override
//   State<CaruselImages> createState() => _CaruselImagesState();
// }

// class _CaruselImagesState extends State<CaruselImages> {
//   CarouselController carouselController = CarouselController();
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Stack(
//       children: [
//         InkWell(
//           onTap: () {},
//           child: CarouselSlider(
//             items: widget.widget.hotelModel.imageUrls
//                 .map(
//                   (e) => SizedBox(
//                     width: width,
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(8.0),
//                       child: Image.network(
//                         e,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 )
//                 .toList(),
//             carouselController: carouselController,
//             options: CarouselOptions(
//                 scrollPhysics: const BouncingScrollPhysics(),
//                 autoPlay: true,
//                 aspectRatio: 2,
//                 viewportFraction: 1,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 }),
//           ),
//         ),
//         Positioned(
//           bottom: 10,
//           left: 0,
//           right: 0,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 158),
//             child: Container(
//               height: 17,
//               padding: const EdgeInsets.all(3),
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(5)),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children:
//                     widget.widget.hotelModel.imageUrls.asMap().entries.map(
//                   (e) {
//                     return GestureDetector(
//                       onTap: () => carouselController.animateToPage(e.key),
//                       child: Container(
//                         width: currentIndex == e.key ? 7 : 7,
//                         height: 7.0,
//                         margin: const EdgeInsets.symmetric(horizontal: 3),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: currentIndex == e.key
//                                 ? Colors.black
//                                 : Colors.grey),
//                       ),
//                     );
//                   },
//                 ).toList(),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
