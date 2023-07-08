import 'package:education/model/subjects.dart';

import 'package:flutter/material.dart';

class ComputerFunksialary extends StatefulWidget {
  const ComputerFunksialary({super.key, required this.computerStructur});
  final List<ComputerStructur> computerStructur;

  @override
  State<ComputerFunksialary> createState() => _ComputerFunksialaryState();
}

class _ComputerFunksialaryState extends State<ComputerFunksialary> {
  Set<int> pressedIndexes = Set<int>();
  void _showButtonPressedDialog(
    ComputerStructur computerStructur,
  ) {
    Future.delayed(const Duration(milliseconds: 300), () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(computerStructur.name),
            content: Text(
              computerStructur.text2 ?? '',
              textAlign: TextAlign.justify,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Жабуу'),
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Информатика'.toUpperCase()),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Text(
            'Компьютердин негизги бөлүктөрү жана \nалардын функциялары',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.6,
                ),
                itemCount: widget.computerStructur.length,
                itemBuilder: ((context, index) {
                  bool isPressed = pressedIndexes.contains(index);

                  final computerStructura = widget.computerStructur[index];
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(255, 215, 227, 226),
                              offset: Offset(-12, 12),
                              blurRadius: 8,
                            ),
                          ],
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromARGB(255, 184, 243, 235),
                              Color.fromARGB(255, 254, 242, 242)
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    'assets/images/informatica/computer_structures/${computerStructura.image}.jpg',
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.all(7.0),
                                    child: GestureDetector(
                                      onTapDown: (_) {
                                        setState(() {
                                          pressedIndexes.add(index);
                                        });
                                      },
                                      onTapUp: (_) {
                                        setState(() {
                                          pressedIndexes.remove(index);
                                          _showButtonPressedDialog(
                                              computerStructura);
                                        });
                                      },
                                      onTapCancel: () {
                                        setState(() {
                                          pressedIndexes.remove(index);
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        transform: isPressed
                                            ? Matrix4.translationValues(0, 8, 0)
                                            : Matrix4.identity(),
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 252, 220, 171),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  255, 96, 88, 88),
                                              offset: Offset(-10, 12),
                                              blurRadius: 8,
                                            ),
                                          ],
                                        ),
                                        child: Text(
                                          computerStructura.text,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            FittedBox(
                              child: Text(
                                computerStructura.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
