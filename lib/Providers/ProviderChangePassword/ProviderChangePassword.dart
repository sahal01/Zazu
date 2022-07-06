import 'package:flutter/material.dart';

class ProviderChangePassword extends ChangeNotifier {
  bool isObscure = true;
  showpass(){
    isObscure = !isObscure;
    notifyListeners();
  }


}
