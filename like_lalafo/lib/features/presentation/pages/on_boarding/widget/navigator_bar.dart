import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavigationBars extends StatelessWidget {
  const NavigationBars({
    super.key,
    required this.tabsRouter,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      onDestinationSelected: (index) {
        // Эгерде "подать" тексти басылса, эч кандай логика аткарылбайт
        if (index != 2) {
          // "подать" тексти басылса, эч кандай иш-аракет болбойт
          if (index > 2) {
            // Эгер индекс 2ден чоң болсо, рут индексин бирге кыскартабыз
            tabsRouter.setActiveIndex(index - 1);
          } else {
            // Калган учурларда индекс туура иштейт
            tabsRouter.setActiveIndex(index);
          }
        }
      },
      selectedIndex: tabsRouter.activeIndex < 2
          ? tabsRouter.activeIndex
          : tabsRouter.activeIndex + 1,
      destinations: const <Widget>[
        NavigationDestination(
            icon: Icon(Icons.home), label: 'главное'), // Индекс 0
        NavigationDestination(
            icon: Icon(Icons.favorite), label: 'избранные'), // Индекс 1
        NavigationDestination(
            icon: SizedBox.shrink(), label: 'подать'), // Индекс 2
        NavigationDestination(
            icon: Icon(Icons.chat), label: 'чаты'), // Индекс 3
        NavigationDestination(
            icon: Icon(Icons.person), label: 'профиль'), // Индекс 4
      ],
    );
  }
}
