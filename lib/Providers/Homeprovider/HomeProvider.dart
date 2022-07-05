import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  dropdown(String newValue){
    dropdownvalue = newValue!;
    notifyListeners();
  }


}