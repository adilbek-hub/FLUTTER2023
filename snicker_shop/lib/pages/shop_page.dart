import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snicker_shop/components/shoe_tile.dart';
import 'package:snicker_shop/models/cart.dart';
import 'package:snicker_shop/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoes shoes) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoes);
    //alert the user, shoe  successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added'),
        content: Text('Check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Icon(Icons.search),
              ],
            ),
          ),
          //Message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'everyone flies.. some fly longer than others',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
          //Hot picks
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Hot picks🔥',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //List of shoes for sale
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  //get a shoe from shop list
                  Shoes shoes = value.getShoeList()[index];
                  //return the shoe
                  return ShoeTile(
                    shoe: shoes,
                    onTap: () => addShoeToCart(shoes),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 25,
              left: 25,
              right: 25,
            ),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
