import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zazu/Changepassword/widgets/ChangepassTextformfield.dart';


import '../CommonWidgets/Button.dart';
import '../Providers/ProviderChangePassword/ProviderChangePassword.dart';
import '../styles/Styles.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);
  final oldpass = TextEditingController();
  final newpass = TextEditingController();
  final confirmnewpass = TextEditingController();
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
                  const SizedBox(height: 80,),

                  ChangepassTextformfield().changepasstextformfield(
                      controller: oldpass,
                      newpass: newpass,
                      confirmnewpass: confirmnewpass,
                      text: "Please enter old Password",
                      hint: "Enter current password",
                      obscureText: provider.isObscure),
                  const SizedBox(
                    height: 15,
                  ),
                  ChangepassTextformfield().changepasstextformfield(
                      controller: newpass,
                      newpass: newpass,
                      confirmnewpass: confirmnewpass,
                      text: 'Please enter new Password',
                      hint: "Enter new password",
                      obscureText: provider.isObscure),
                  const SizedBox(
                    height: 15,
                  ),

                  ChangepassTextformfield().changepasstextformfield(
                      controller: confirmnewpass,
                      newpass: newpass,
                      confirmnewpass: confirmnewpass,
                      text: 'Please Re-Enter New Password',
                      hint: "Re enter new password",
                      obscureText: provider.isObscure),

                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: w,
                    height: 40,
                    child: Button().button(action: (){
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    }, txt: "Change Password")


                ),
                ],
              ),
            ),
          ),
        ));
      }),
    );
  }
}
