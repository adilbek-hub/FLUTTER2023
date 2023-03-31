import 'package:coffee_shop/pages/cart_page.dart';
import 'package:coffee_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//Бул тандалган индекс эки астыңкы навигация тилкесин
// көзөмөлдөйт
  int _selectedIndex = 0;
//Бул ыкма биздин тандалган индексти жаңылайт
  // колдонуучу ылдыйкы тилкеде өтмөктөр болгондо
  void navigateBottomBar(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  final List<Widget> pages = [
    CartPage(),
    ShopPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        child: GNav(
            onTabChange: (value) => navigateBottomBar(value),
            color: Colors.grey[400],
            activeColor: Colors.grey[200],
            tabBorderRadius: 25,
            tabBackgroundColor: Colors.grey.shade600,
            mainAxisAlignment: MainAxisAlignment.center,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'home',
              ),
              GButton(
                icon: Icons.phone,
                text: 'phone',
              ),
            ]),
      ),
      body: pages[_selectedIndex],
    );
  }
}
