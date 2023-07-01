import 'package:education/views/informatica_topics_view.dart';
import 'package:flutter/material.dart';

class Informatica extends StatelessWidget {
  const Informatica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.adaptive.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 45,
                width: 200,
                height: 50,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25))),
                  child: const Center(
                    child: Text(
                      'Чакан китепкана',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.orange),
                    ),
                  ),
                ),
              )
            ],
          ),
          const Expanded(child: InformaticaTopics()),
        ],
      ),
    );
  }
}
