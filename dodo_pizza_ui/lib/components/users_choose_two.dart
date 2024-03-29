import 'package:dodo_pizza_ui/features/data/models/profitable_tasty.dart';
import 'package:flutter/material.dart';

class UserChoosesTwo extends StatelessWidget {
  const UserChoosesTwo({
    super.key,
    required this.onTap,
    required this.profitableTasty,
  });
  final void Function()? onTap;
  final ProfitableTasty profitableTasty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(50),
                child: Image.network(
                  profitableTasty.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(profitableTasty.title),
                const SizedBox(height: 8),
                Container(
                  width: 85,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 202, 202),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(profitableTasty.price),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
