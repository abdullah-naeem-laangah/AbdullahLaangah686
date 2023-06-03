import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "AS Comuninication",
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Abdullah"),
     ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          //color: Colors.teal,
          width: 100,
          height: 100,
          child: Text("abdullah", style: TextStyle(
            color: Colors.blue,
            fontSize: 10,
            fontWeight: FontWeight.bold,

          ),),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow:[BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              offset: Offset(2,0),
            )],
            color: Colors.teal,
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(colors: [
              Colors.yellow,Colors.pink,
            ]

            )
          ),
        ),
      ),


    );
  }
}






