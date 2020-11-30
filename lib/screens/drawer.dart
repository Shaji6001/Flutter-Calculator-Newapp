import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("shaji.R"), 
              accountEmail: Text("shaji@gmail.com")),
          ListTile(
            title: Text("Calculator"),trailing: Icon(Icons.add_a_photo),),
        ],
      ),
    );
  }
}
