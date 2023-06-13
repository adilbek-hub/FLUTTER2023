import 'package:education/model/biology_question.dart';

import 'package:flutter/material.dart';

class VariantsBiology extends StatelessWidget {
  const VariantsBiology({
    Key? key,
    required this.biologyJoop,
    required this.onTap,
  }) : super(key: key);
  final List<BiologyJoop> biologyJoop;
  final Function(bool) onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        // flex: 2,
        child: GridView.builder(
            padding: const EdgeInsets.only(
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
                    onTap(biologyJoop[index].tuuraJoop);
                  },
                  child: Center(
                    child: Text(biologyJoop[index].name),
                  ),
                ),
              );
            })));
  }
}
