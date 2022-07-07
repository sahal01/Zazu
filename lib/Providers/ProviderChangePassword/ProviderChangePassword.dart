import 'package:flutter/material.dart';

class ProviderChangePassword extends ChangeNotifier {
  final oldpass = TextEditingController();
  final newpass = TextEditingController();
  final confirmnewpass = TextEditingController();
  bool isObscure = true;
  bool isObscure2 = true;

  showpass() {
    isObscure = !isObscure;
    notifyListeners();
  }

  showpass2() {
    isObscure2 = !isObscure2;
    notifyListeners();
  }
}
