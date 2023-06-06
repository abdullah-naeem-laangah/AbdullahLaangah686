import 'package:as_com/utils/constants.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AbdulRehmanApp"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Card(
                child: Column(
                  children: [
                    Form(child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(hintText:"User Name", labelText: "Email or User Name"),

                          ),

                          TextFormField(
                            decoration: const InputDecoration(hintText:"password", labelText: "Password"),
                            obscureText: true,
                          )
                        ],
                      ),
                    )
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(onPressed: ()  {
                      Constants.prefs.setBool("LoggedIn", true);
                      Navigator.pushReplacementNamed(context, "/home");
                    },
                        child: const Text("Sign Inn"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

