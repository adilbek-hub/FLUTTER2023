import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'package:rive_animation/model/rive_asset.dart';

class SideMenuTile extends StatelessWidget {
  const SideMenuTile(
      {Key? key,
      required this.menu,
      required this.press,
      required this.riveonInit,
      required this.isActive})
      : super(key: key);
  final RiveAsset menu;
  final VoidCallback press;
  final ValueChanged<Artboard> riveonInit;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: SizedBox(
            height: 34,
            width: 34,
            child: RiveAnimation.asset(
              menu.src,
              artboard: menu.artboard,
              onInit: riveonInit,
            ),
          ),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
