import 'package:learn_with_codepur/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget{
Widget build(BuildContext Context){
  return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
          "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
          "Trending products".text.xl2.make(),
          
            ],
          );   
}

}