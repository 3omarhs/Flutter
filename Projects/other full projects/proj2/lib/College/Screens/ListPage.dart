import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Widgets/ListViewPages/Items.dart';
import 'package:proj2/own%20proj%60s/Widgets/ListViewPages/ListData.dart';
import 'package:proj2/own%20proj%60s/Widgets/Lists/category_1.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Categories.length,
          itemBuilder: (context, index)
         {
          return Container();//ListData(item: Categories[index]);
         },
      )

    );
  }
}
