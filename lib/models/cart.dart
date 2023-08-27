import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class cart with ChangeNotifier {
  List<Shoe> shoes =
      []; //عملنا ديه عشان كل منتك على فانكشن الادد يتخزن المنتج هنا
  double price = 0;
  void add(Shoe shoe) {
    shoes.add(shoe); //عشان التكرار بستدعي اليست الي عملتها
    price += shoe.price;
    notifyListeners();
  }

  void remove(Shoe shoe) {
    shoes.remove(shoe); //عشان التكرار بستدعي اليست الي عملتها
    price -= shoe.price;
    notifyListeners();
  }

  int get count {
    return shoes.length;
  }

  double get totalPrice {
    return price;
  }

  List<Shoe> get basketitems {
    return shoes;
  }
}
