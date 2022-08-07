import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_topBar.dart';

class topBar extends StatelessWidget {
  const topBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: list_color,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: double.infinity
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              item_in_topBar(ico: Icon(Icons.category, size: 35,), label: "label1"),
              item_in_topBar(ico: Icon(Icons.category, size: 35,), label: "label2"),
              item_in_topBar(ico: Icon(Icons.category, size: 35,), label: "label3"),
              item_in_topBar(ico: Icon(Icons.category, size: 35,), label: "label4"),
              item_in_topBar(ico: Icon(Icons.category, size: 35,), label: "label5"),
              item_in_topBar(ico: Icon(Icons.category, size: 35,), label: "label6")
            ],
          ),
        ),
      ),
    );
  }
}
