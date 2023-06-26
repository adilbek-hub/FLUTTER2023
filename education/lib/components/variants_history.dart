import 'package:education/model/history_question.dart';
import 'package:flutter/material.dart';

class VariantsHistory extends StatelessWidget {
  const VariantsHistory({
    Key? key,
    required this.historyJoop,
    required this.onTap,
  }) : super(key: key);
  final List<HistoryAnswer> historyJoop;
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
                    onTap(historyJoop[index].isTrue);
                  },
                  child: Center(
                    child: Text(historyJoop[index].text),
                  ),
                ),
              );
            })));
  }
}
