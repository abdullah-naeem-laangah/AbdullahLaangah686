import 'package:as_com/utils/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change me";
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos/');
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }
  getData() async{
    var res = await http.get(url);
    data = jsonDecode(res.body);
    if (kDebugMode) {
      print(data);
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Abdullah"),
        actions: [
          IconButton(onPressed:(){
            Constants.prefs.setBool("LoggedIn", false);
            Navigator.pushReplacementNamed(context, "/login");

          }, icon:Icon(Icons.exit_to_app) )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (data != null?
        ListView.builder(
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text( data[index]["title"]),
                  leading: Image.network(data[index]["url"]),
                ),
              );
            },
            itemCount: data.length,
        ):Center(
          child: CircularProgressIndicator(),)
        ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        myText = _nameController.text;
        setState(() {

        });
      },
        child: Icon(Icons.refresh),
      ),
    );
  }
}