import 'package:animation_lesson/duration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    changeMode();
  }

  Future<void> changeMode() async {
    await Future<void>.delayed(duration);
    setState(() {
      isFullSun = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      const Color(0xFF8C2480),
      const Color(0xFFCE587D),
      const Color(0xFFFF9485),
      if (isFullSun) Color.fromARGB(255, 247, 217, 209),
    ];
    var darkBgColors = const [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
    //Containerдин бийиктиги экрандын бийиктиги менен барабар болсун.
    final h = MediaQuery.of(context).size.height;
    //Containerдин туурасы экрандын туурасына барабар болсун.
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        //AnimatedContainer бийиктиги экрандын бийиктиги менен барабар болсун.
        body: AnimatedContainer(
      duration: duration,
      height: h,
      width: w,
      decoration: BoxDecoration(
        //gradient бул анимация экранын градиенттейт
        gradient:
            // isFullSun = true => lightBgColors & isFullSun = false => darkBgColors
            LinearGradient(
                //LinearGradient башталышы астынын ортосунан башталсын
                begin: Alignment.topCenter,
                //LinearGradient башталышы үстүнүн ортосунан башталсын
                end: Alignment.bottomCenter,
                colors: isFullSun ? lightBgColors : darkBgColors),
      ),
      // Stack бул бир нерселерди үстү үстүнө коюуу
      child: Stack(children: [
        //Күндү AnimatedPositionedке койгонубуздун себеби анимация болгондо
        // ал өзүнүн позициясын алмаштырыш керек. Мисалы күн үстүнө чыгуу керек же астына кирүү керек.
        AnimatedPositioned(
          duration: duration,
          bottom: isFullSun ? 20 : -160,
          left: 0,
          child: SvgPicture.asset('assets/images/sun.svg'),
        ),
        //Positioned бул бир нерсени коюп ал нерсенин туруучу позициясын берүү
        Positioned(
            // Сурөт астына - 45 ке чейин түшсүн
            bottom: -45,
            right: 0,
            left: 0,
            child: Image(
              image: const AssetImage('assets/images/land_tree_dark.png'),
              //Сүрөт бардык экрандын 0,58 пайызында турсун.
              height: h * 0.58,
              fit: BoxFit.fitHeight,
            )),
        Container(
          margin: const EdgeInsets.fromLTRB(50, 50, 10, 0),
          width: w * 0.7,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: DefaultTabController(
              length: 2,
              child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  unselectedLabelStyle: const TextStyle(fontSize: 12),
                  indicatorColor: Colors.transparent,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white70),
                  tabs: const [
                    Tab(
                      text: 'Morning Mode',
                    ),
                    Tab(
                      text: 'Night Mode',
                    )
                  ])),
        ),
      ]),
    ));
  }
}
