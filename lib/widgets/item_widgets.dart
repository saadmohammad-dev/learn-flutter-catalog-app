import 'package:flutter/material.dart';
import 'package:learn_with_codepur/models/catalog.dart';

class ItemWidgets extends StatelessWidget {
  final Item item;

  const ItemWidgets({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${item.name}pressed");
        },
        leading: Image.network(
          item.image,
          errorBuilder: (context, error, stack) =>
              Icon(Icons.broken_image), // <- Shows icon instead of red screen
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
