import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, size: 20,color: Colors.black,)
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Column(
                children: [
                  Text("Signup", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Create an account, Its Free", style: TextStyle(fontSize: 15, color: Colors.grey),)
                ],
              ),
              Column(
                children: [
                  inputFile(lable: "Email"),
                  inputFile(lable: "Password", obsecureText: true),
                  inputFile(lable: "Confirm Password", obsecureText: true),
                  inputFile(lable: "Mobile Number"),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top:6 , left: 3),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                  },
                  color: Colors.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text("Create Account", style:  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),),
                ),
              ),
              Row(
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
