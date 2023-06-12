import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text("Abdullah Naeem"),
              accountEmail: Text("Abdullah@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1519058082700-08a0b56da9b4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fG1lbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              )
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("User Name"),
            subtitle: Text("Person Namee"),
            trailing: Icon(Icons.edit),

          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("User Name"),
            subtitle: Text("Person Namee"),
            trailing: Icon(Icons.edit),

          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("User Name"),
            subtitle: Text("Person Namee"),
            trailing: Icon(Icons.edit),

          )
        ],
      ),
    );
  }
}
