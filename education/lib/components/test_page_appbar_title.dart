import 'package:education/constants/app_color.dart';
import 'package:flutter/material.dart';

class TestPageAppBarTitle extends StatelessWidget {
  const TestPageAppBarTitle(
      {Key? key, required this.tuuraJooptor, required this.kataJooptor})
      : super(key: key);
  final int tuuraJooptor;
  final int kataJooptor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                Text(
                  '$kataJooptor',
                  style: const TextStyle(color: AppColors.red, fontSize: 16),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      '32',
                      style: TextStyle(fontSize: 17),
                    )),
                Text(
                  '$tuuraJooptor',
                  style: const TextStyle(color: Colors.green, fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        const Text('3'),
        Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return const Icon(
                      Icons.favorite,
                      color: AppColors.red,
                    );
                  })),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
