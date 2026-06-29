import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_with_codepur/models/catalog.dart';
import 'package:learn_with_codepur/widgets/drawer.dart';
import 'package:learn_with_codepur/widgets/item_widgets.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num days = 30;
  var name = "SAAD MOHAMMAD";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));

    final catalogjson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );
    final decodedData = jsonDecode(catalogjson); 
    var productsData = decodedData["products"];

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog APP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Added '?' and '!' to safely check and read the nullable items list
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items!.length,
                itemBuilder: (contex, index) =>
                   ItemWidgets(item: CatalogModel.items![index]),
                
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}