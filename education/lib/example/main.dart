import 'package:education/example/example.dart';
import 'package:education/pages/all_search.dart';
import 'package:education/views/books_view.dart';
import 'package:flutter/material.dart';
import 'package:moony_nav_bar/moony_nav_bar.dart';

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  final Widget _screen1 = const BooksView();
  final Widget _screen2 = const Screen2();
  final Widget _screen3 = const AllSearchPage();
  final Widget _screen4 = const Screen4();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: MoonyNavigationBar(
        items: <NavigationBarItem>[
          NavigationBarItem(
              icon: Icons.home_rounded,
              onTap: () {
                onTapHandler(0);
              }),
          NavigationBarItem(
              icon: Icons.favorite_border_outlined,
              activeIcon: Icons.favorite,
              color: Colors.pink,
              indicatorColor: Colors.pink,
              onTap: () {
                onTapHandler(1);
              }),
          NavigationBarItem(
              icon: Icons.search,
              onTap: () {
                onTapHandler(2);
              }),
          NavigationBarItem(
              icon: Icons.person_outline,
              onTap: () {
                onTapHandler(3);
              })
        ],
        style: MoonyNavStyle(
          activeColor: Theme.of(context).primaryColor,
          indicatorPosition: IndicatorPosition.TOP,
          indicatorType: IndicatorType.POINT,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return _screen1;
    } else if (selectedIndex == 1) {
      return _screen2;
    } else if (selectedIndex == 2) {
      return _screen3;
    }
    return _screen4;
  }

  void onTapHandler(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
