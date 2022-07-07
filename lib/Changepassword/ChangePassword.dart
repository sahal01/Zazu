import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zazu/Changepassword/widgets/ChangepassTextformfield.dart';

import '../CommonWidgets/Button.dart';
import '../Providers/ProviderChangePassword/ProviderChangePassword.dart';
import '../styles/Styles.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body:
          Consumer<ProviderChangePassword>(builder: (context, provider, child) {
        return Center(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            width: w,
            height: 400,
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Change password",
                      style: Styles().normalS(
                          fontW: FontWeight.w500, fontS: 22, color: black),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  ChangepassTextformfield().changepasstextformfield(
                    controller: provider.oldpass,
                    newpass: provider.newpass,
                    confirmnewpass: provider.confirmnewpass,
                    text: "Please enter old Password",
                    hint: "Enter current password",
                    obscureText: provider.isObscure,
                    istrue: true,
                    index: 1,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ChangepassTextformfield().changepasstextformfield(
                    controller: provider.newpass,
                    newpass: provider.newpass,
                    confirmnewpass: provider.confirmnewpass,
                    text: 'Please enter new Password',
                    hint: "Enter new password",
                    obscureText: provider.isObscure2,
                    istrue: true,
                    index: 2,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ChangepassTextformfield().changepasstextformfield(
                    controller: provider.confirmnewpass,
                    newpass: provider.newpass,
                    confirmnewpass: provider.confirmnewpass,
                    text: 'Please Re-Enter New Password',
                    hint: "Re enter new password",
                    obscureText: false,
                    istrue: false,
                    index: 0,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                      width: w,
                      height: 40,
                      child: Button().button(
                          action: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                            }
                          },
                          txt: "Change Password")),
                ],
              ),
            ),
          ),
        ));
      }),
    );
  }
}
