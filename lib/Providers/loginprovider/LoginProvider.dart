import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  bool isObscure = true;
  showpass(){
    isObscure = !isObscure;
    notifyListeners();
  }


}