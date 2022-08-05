import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Datasets/Dataset_whats.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/Sub%20Items/ListData.dart';

class my_tile_list extends StatelessWidget {
  final String category;
  const my_tile_list({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: [
          for(int i=0; i<Categories[category]!.length; i++)
            Column(children: [
              ListData(item: Categories[category]![i], index: [[category],[i]]),
              SizedBox(height: 5,)
            ])
        ],),
      ),
    );
  }
}
