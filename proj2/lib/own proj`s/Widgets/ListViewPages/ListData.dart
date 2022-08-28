import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Datasets/Dataset_2.dart';

class ListData extends StatelessWidget {
  final Item item;
  const ListData({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(item.imgPath),
      title: Text(item.name),
      subtitle: Text(item.desc),
    );
  }
}
