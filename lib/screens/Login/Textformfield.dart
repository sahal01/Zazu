import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Providers/loginprovider/LoginProvider.dart';
import 'InputDecoration.dart';
import 'Validator.dart';

class Textformfield {
  textformfield(
      {required TextEditingController controller,
      required TextEditingController userpass,
      required bool obs,
      required String hint,
      required String text}) {
    return Consumer<LoginProvider>(builder: (context, provider, child) {
      return TextFormField(
          controller: controller,
          obscureText: obs,
          textInputAction: TextInputAction.next,
          autofocus: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: Inputdecoration().inputdecoration(
              hint: hint,
              password: () {
                if (controller == userpass) {
                  return IconButton(
                      icon: Icon(provider.isObscure
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        provider.showpass();
                      });
                }
              }),
          validator: Validator().validator(text: text));
    });
  }
}
