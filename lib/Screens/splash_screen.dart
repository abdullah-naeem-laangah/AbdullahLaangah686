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
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
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
                    Text("Welcome to As Cpmunincation Now on first order get 70% discount", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),)
                  ],
                )
              ],
            ),
          )
      ),
    );
  }
}

