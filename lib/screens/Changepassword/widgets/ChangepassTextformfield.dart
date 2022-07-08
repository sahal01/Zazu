import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Providers/ProviderChangePassword/ProviderChangePassword.dart';
import '../../Login/InputDecoration.dart';

class ChangepassTextformfield {
  changepasstextformfield(
      {required TextEditingController controller,
      required TextEditingController newpass,
      required TextEditingController confirmnewpass,
      required String text,
      required String hint,
      required bool istrue,
      required int index,
      required bool obscureText}) {
    return Consumer<ProviderChangePassword>(
        builder: (context, provider, child) {
      return TextFormField(
          controller: controller,
          obscureText: obscureText,
          textInputAction: TextInputAction.next,
          autofocus: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: Inputdecoration().inputdecoration(
              hint: hint,
              password: () {
                if (istrue) {
                  if (index == 1) {
                    return IconButton(
                        icon: Icon(provider.isObscure
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          provider.showpass();
                        });
                  }
                  if (index == 2) {
                    return IconButton(
                        icon: Icon(provider.isObscure2
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          provider.showpass2();
                        });
                  }
                }
              }),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return text;
            }
            if (controller == confirmnewpass) {
              if (value != newpass.text) {
                return 'Password must be same as above';
              }
              return null;
            }
          });
    });
  }
}
