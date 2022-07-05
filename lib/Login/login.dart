import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zazu/HomePage/homepage.dart';
import 'package:zazu/Login/SaveButton.dart';

import '../Providers/loginprovider/LoginProvider.dart';
import 'Textformfield.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final username = TextEditingController();
  final userpass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,

        body: Consumer<LoginProvider>(builder: (context, provider, child) {
          return Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              width: w,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Textformfield().textformfield(
                          controller: username,
                          obs: false,
                          hint: "User name",
                          text: "Enter User Name",
                          userpass: userpass),
                      const SizedBox(
                        height: 30,
                      ),
                      Textformfield().textformfield(
                          controller: userpass,
                          obs: provider.isObscure,
                          hint: "Password",
                          text: "Enter User Password",
                          userpass: userpass),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {
                                var snackBar = const SnackBar(
                                    content: Text('Forgot Password'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: const Text("Forgot Password",
                                  style: TextStyle(
                                    color: Colors.black,
                                  )))
                        ],
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      SaveButton().save(
                          validate: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),

                              );


                              WidgetsBinding.instance.addPostFrameCallback((_) {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Home()));
                              });


                            }
                          },
                          w: w)
                    ],
                  ),
                ),
              ),
            ),
          );
        }));
  }
}
