import 'package:as_com/utils/constants.dart';
import 'package:flutter/material.dart';

import '../helper.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        // body:  Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child:
        //   Center(
        //     child: SingleChildScrollView(
        //       child: Column(
        //         children: [
        //           Column(
        //             children: [
        //               Form(child: Padding(
        //                 padding: const EdgeInsets.all(16.0),
        //                 child: Column(
        //                   children: [
        //                     TextFormField(
        //                       decoration: InputDecoration(hintText:"User Name", labelText: "Email or User Name"),
        //                     ),
        //                     TextFormField(
        //                       decoration: const InputDecoration(hintText:"password", labelText: "Password"),
        //                       obscureText: true,
        //                     ),
        //                   ],
        //                 ),
        //               )
        //               ),
        //               const SizedBox(
        //                 height: 30,
        //               ),
        //               ElevatedButton(onPressed: ()  {
        //                 Constants.prefs.setBool("LoggedIn", true);
        //                 Navigator.pushReplacementNamed(context, "/home");
        //               },
        //                   child: const Text("Sign Inn"))
        //             ]
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 130,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/image1.png")
                        )
                    ),
                  ),
                  const Column(
                    children: [
                      Text("Login", style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Login with register account", style: TextStyle(fontSize: 15, color: Colors.grey),)
                    ],
                  ),
                  Column(
                    children: [
                      inputFile(lable: "Email"),
                      inputFile(lable: "Password", obsecureText: true),
                      // inputFile(lable: "Confirm Password", obsecureText: true),
                      // inputFile(lable: "Mobile Number"),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top:6 , left: 3),
                    decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(50),
                        border: const Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                      },
                      color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: const Text("Login", style:  TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account"),
                      Text("Login", style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
      ),
    );
  }
}

Widget inputFile({lable, obsecureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(lable, style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obsecureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical:0,horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,

              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                )
            )

        ),
      ),
    ],
  );
}

