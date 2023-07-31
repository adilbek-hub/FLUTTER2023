import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Logout'),
                        onTap: () async => await controller.logout(),
                      ),
                      PopupMenuItem(
                        child: const Text('Delete'),
                        onTap: () async => await controller.delete(),
                      ),
                    ])
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.red, width: 1))),
              child: Row(
                children: [
                  Expanded(
                      child:
                          TextFormField(controller: controller.smsController)),
                  IconButton(
                      onPressed: () async {
                        controller.sendMessage();
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.red,
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
