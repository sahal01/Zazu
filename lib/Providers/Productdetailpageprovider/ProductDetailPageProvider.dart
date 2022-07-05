import 'package:flutter/material.dart';

class ProductDetailPageProvider extends ChangeNotifier {
  int quantity = 1;
  incrementquantity(){
    quantity++;
    notifyListeners();
  }
  decrementquantity(){
    if(quantity>1){
      quantity--;
      notifyListeners();
    }
  }

}