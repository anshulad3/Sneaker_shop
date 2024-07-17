import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Nike Air Jordan 1',
      price: '₹ 11,495.00',
      description: 'Inspired by the original AJ1.',
      imagePath: 'lib/images/AirForce1.png',
    ),
    Shoe(
      name: 'Nike Fly Wire',
      price: '₹ 12,999.00',
      description: 'Spread your wings.',
      imagePath: 'lib/images/Flywire.png',
    ),
    Shoe(
      name: 'Nike Zoom Freak',
      price: '₹ 10,895.00',
      description: "Giannis signatures",
      imagePath: 'lib/images/nike1.png',
    ),
    Shoe(
      name: 'Nike ACG Torre High',
      price: '₹ 14,995.00',
      description: 'Out of the archives, into the wild.',
      imagePath: 'lib/images/ACG.png',
    ),
    Shoe(
      name: 'Nike Air Huarache',
      price: '₹ 12,795.00',
      description: "It doesn't need a Swoosh logo.",
      imagePath: 'lib/images/Huarache.png',
    ),
  ];

  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
