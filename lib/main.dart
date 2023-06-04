import 'package:as_com/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ChangeNameCard.dart';
import 'drawer.dart';
import 'homepage.dart';
import 'login_page.dart';

Future main () async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = SharedPreferences.getInstance() as SharedPreferences;
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "AS Comuninication",
    home: Constants.prefs.getBool("LoggedIn")== true?HomePage():LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.lime
    ),
  ));
}










