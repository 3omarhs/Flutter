import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_categ.dart';

class category_1 extends StatelessWidget {
  // final List<item_in_categ> items;
  final List items;
  final String title;
  const category_1({Key? key, required this.items, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int len = items.length;
    content(int i){
      return items[i];
    }
    return Center(
      child: ConstrainedBox(
        constraints: new BoxConstraints(minWidth: 300, minHeight: 255, maxWidth: MediaQuery.of(context).size.width-50),
        child: Container(
          padding: const EdgeInsets.only(top: 20.0),
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
            ),
            child: Column(children: [
              Text(title, style: TextStyle(fontSize: 25),),
              ConstrainedBox(
                constraints: new BoxConstraints(minHeight: 200/*, maxWidth: MediaQuery.of(context).size.width-70*/),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for(int i=0; i<len; i++)
                        content(i),
                    ],
                  ),
                ),
              ),
            ],)
          ),
        ),
      ),
    );
  }
}
