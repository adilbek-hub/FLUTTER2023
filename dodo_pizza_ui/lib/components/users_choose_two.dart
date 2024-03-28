import 'package:flutter/material.dart';

class UserChoosesTwo extends StatelessWidget {
  const UserChoosesTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(50),
              child: Image.network(
                'https://staticcontent.mypizza.kg/Dishes/Imperiia_Pitstsyi/v1/Pitstsa_40sm/Obzhorka_40sm/Medium.png?hash=0fb89dbac3094a820b817af8321d8937',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Пепперони'),
              const SizedBox(height: 8),
              Container(
                width: 85,
                height: 30,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 203, 202, 202),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text('от 455 сом')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
