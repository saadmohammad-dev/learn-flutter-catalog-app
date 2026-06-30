import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learn_with_codepur/models/catalog.dart';
import 'package:learn_with_codepur/widgets/home_widgets/catalog_header.dart';
import 'package:learn_with_codepur/widgets/home_widgets/catalog_list.dart';
import 'package:learn_with_codepur/widgets/drawer.dart';
import 'package:learn_with_codepur/widgets/item_widgets.dart';
import 'package:learn_with_codepur/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

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

    CatalogModel.items = List.from(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext contex) {
    return Scaffold(

              backgroundColor: MyTheme.creamColor,

      body:  SafeArea(

        child: Container(
          padding: Vx.m32,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
          CatalogHeader(),

          if(CatalogModel.items!=null && CatalogModel.items!.isNotEmpty)
          CatalogList().py16().expand()
          else
                  CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ));
  }
}





