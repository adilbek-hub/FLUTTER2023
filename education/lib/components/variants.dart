import 'package:education/model/suroo.dart';
import 'package:flutter/material.dart';

class Variants extends StatelessWidget {
  const Variants({
    Key? key,
    required this.jooptor,
    required this.onTap,
  }) : super(key: key);
  final List<Joop> jooptor;
  final Function(bool) onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        // flex: 2,
        child: GridView.builder(
            padding: EdgeInsets.only(
              left: 5,
              right: 5,
            ),
            // physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.6,
            ),
            itemCount: 4,
            itemBuilder: ((context, index) {
              return Card(
                color: Colors.grey[400],
                child: InkWell(
                  onTap: () {
                    onTap(jooptor[index].isTrue);
                  },
                  child: Center(
                    child: Text(jooptor[index].text),
                  ),
                ),
              );
            })));
  }
}
