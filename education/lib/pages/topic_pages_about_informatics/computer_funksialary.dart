import 'package:education/model/subjects.dart';

import 'package:flutter/material.dart';

class ComputerFunksialary extends StatelessWidget {
  const ComputerFunksialary({super.key, required this.computerStructur});
  final List<ComputerStructur> computerStructur;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Информатика'.toUpperCase()),
          elevation: 0,
        ),
        body: GridView.builder(
            padding: const EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.6,
            ),
            itemCount: computerStructur.length,
            itemBuilder: ((context, index) {
              final computerStructura = computerStructur[index];
              return InkWell(
                onTap: () {},
                child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          computerStructura.text2 ?? '',
                          textAlign: TextAlign.center,
                        ),
                        Expanded(
                          child: Card(
                            child: Image.asset(
                              'assets/images/informatica/computer_structures/${computerStructura.image}.jpg',
                            ),
                          ),
                        ),
                        Text(
                          computerStructura.name,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              );
            })));
  }
}
