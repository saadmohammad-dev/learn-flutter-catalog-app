import 'package:flutter/material.dart';
import 'package:learn_with_codepur/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  num days = 30;
  var name = "SAAD MOHAMMAD";

  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(title: Text('Catalog APP')),
      body: Center(
        child: Container(
          child: Text("Welcome in $days days of flutter with $name ."),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
