import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Providers/providers.dart';
import '../../Login/InputDecoration.dart';

class ChangepassTextformfield extends ConsumerWidget {
  const ChangepassTextformfield({
    required this.controller,
    required this.newpass,
    required this.confirmnewpass,
    required this.text,
    required this.hint,
    required this.istrue,
    required this.index,
    required this.obscureText,
    Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final TextEditingController newpass;
  final TextEditingController confirmnewpass;
  final String text;
  final String hint;
  final bool istrue;
  final int index;
  final bool obscureText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (_, ref, __) {
        final data = ref.watch(changePasswordProvider);
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
                    icon: Icon(
                      data.isObscure ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: data.showpass,
                  );
                }
                if (index == 2) {
                  return IconButton(
                    icon: Icon(
                      data.isObscure2 ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: data.showpass2,
                  );
                }
              }
            },
          ),
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
          },
        );
      },
    );
  }
}
