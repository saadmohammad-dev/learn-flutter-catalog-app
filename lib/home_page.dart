import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  num days = 30;
  var name = "SAAD MOHAMMAD";

  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(title: Text('Catalog APP')),

      body: Container(
        child: Center(
          child: Container(
            child: Text("Welcome in $days days of flutter with $name ."),
          ),
        ),
      ),

      drawer: Drawer(),
    );
  }
}
