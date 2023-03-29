import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snicker_shop/components/cart_item.dart';
import 'package:snicker_shop/models/cart.dart';
import 'package:snicker_shop/models/shoe.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    //get individual shoe
                    Shoes individualShoe = value.getUserCart()[index];
                    //return the cart item
                    return CartItem(shoes: individualShoe);
                  }),
            )
          ],
        ),
      ),
    );
  }
}
