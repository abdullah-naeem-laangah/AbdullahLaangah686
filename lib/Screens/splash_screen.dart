import 'package:as_com/Screens/login_page.dart';
import 'package:as_com/Screens/signup_screen.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Welcome", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                     
                    ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Welcome to Laangah Fruits Now on first order get 70% discount", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),)
                  ],
                ),
                Container(
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image1.png")
                    )
                  ),
                ),
                Column(
                  children: [
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
                        },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                      child: Text("login", style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),),
                    ),
                    SizedBox(height: 20,),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                      },
                      color: Colors.lightGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Sign Up", style:  TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),),
                    )
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}

