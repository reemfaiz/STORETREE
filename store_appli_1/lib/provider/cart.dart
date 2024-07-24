import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:store_appli_1/model/item.dart';

class Cart with ChangeNotifier {
  List select = [];
  int price = 0;
  add(Item prodect) {
    select.add(prodect);
    price += prodect.price.round();
    notifyListeners();
  }

  remove(Item prodect) {
    select.remove(prodect);
    price -= prodect.price.round();
      notifyListeners();
  }
}
