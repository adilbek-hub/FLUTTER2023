import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/components/info_cart.dart';
import 'package:rive_animation/components/side_menu_tile.dart';
import 'package:rive_animation/model/rive_asset.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: 288,
        color: const Color(0xff17203a),
        child: SafeArea(
          child: Column(
            children: [
              const InfoCart(
                name: 'Adilbek',
                profession: 'Mobile Developer',
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 32,
                  bottom: 16,
                ),
                child: Text(
                  'Browse'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.white70),
                ),
              ),
              //Here the icon is Rive asset because animate asset
              ...sideMenus.map(
                (e) =>  SideMenuTile(
                 
                 isActive: false, menu: , press: () {  }, riveonInit: (artBoard) {  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
