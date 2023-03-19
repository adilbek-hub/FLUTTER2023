import 'package:flutter/material.dart';
import 'package:snicker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
//List of shoes for sale
  List<Shoes> shoeShop = [
    Shoes(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'assets/images/nike1.png',
      description:
          'the forward -thinking design of his latest signature shoes.',
    ),
    Shoes(
      name: 'Air Jordans',
      price: '220',
      imagePath: 'assets/images/nike1.png',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance',
    ),
    Shoes(
      name: 'KD Treys',
      price: '240',
      imagePath: 'assets/images/nike1.png',
      description:
          'A secure midfoot strap is suitedfor scoring bingest and defensive',
    ),
    Shoes(
      name: 'Kurie 6 ',
      price: '190',
      imagePath: 'assets/images/nike1.png',
      description:
          'You\'ve got the hops and the speed-lace up in shoes that enhance',
    ),
  ];
//Колдонуучунун арабасында элементтердин тизмеси
  List<Shoes> userCart = [];
//сатыла турган бут кийимдердин тизмесин алуу
  List<Shoes> getShoeList() {
    return shoeShop;
  }

//get cart => арабаны алуу
  List<Shoes> getUserCart() {
    return userCart;
  }

//add items to cart => себетке нерселерди кошуу
  void addItemToCart(Shoes shoes) {
    userCart.add(shoes);
    notifyListeners();
  }

//remove item from cart
  void removeItemFromCart(Shoes shoes) {
    userCart.remove(shoes);
    notifyListeners();
  }
}
