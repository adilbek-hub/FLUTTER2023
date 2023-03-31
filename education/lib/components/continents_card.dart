import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/continent.dart';

class ContinentCard extends StatelessWidget {
  const ContinentCard({
    Key? key,
    required this.itemContinents,
    required this.onTap,
  }) : super(key: key);

  final Continent itemContinents;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              itemContinents.name,
              style: const TextStyle(fontSize: 15),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: SvgPicture.asset(
                    'assets/icons/continents/${itemContinents.icon}.svg',
                    color: itemContinents.color,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
