

import 'package:as_com/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/login_page.dart';
import 'Screens/signup_screen.dart';
import 'Screens/splash_screen.dart';
import 'drawer.dart';
import 'Screens/homepage.dart';


 Future main () async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance() as SharedPreferences;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "AS Comuninication",
    //home: Constants.prefs.getBool("LoggedIn")== true?HomePage():LoginPage(),
    home: const SplashScreen(),
    theme: ThemeData(
      primarySwatch: Colors.lime
    ),
    routes: {
      "/login":(context)=>LoginPage(),
      "/home":(context)=>HomePage(),
    },
  ),
  );
}










