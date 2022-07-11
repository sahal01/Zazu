import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zazu/Providers/providers.dart';

import 'InputDecoration.dart';
import 'Validator.dart';

class Textformfield extends ConsumerWidget {
  const Textformfield({
    required this.controller,
    required this.userpass,
    required this.obs,
    required this.hint,
    required this.text,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final TextEditingController userpass;
  final bool obs;
  final String hint;
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (_, ref, __) {
        final data = ref.watch(loginProvider);
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
                  icon: Icon(
                    data.isObscure ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: data.showpass,
                );
              }
            },
          ),
          validator: Validator().validator(text: text),
        );
      },
    );
  }
}
