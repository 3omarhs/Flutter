import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_categ.dart';

class category extends StatelessWidget {
  // final List<item_in_categ> items;
  final List items;
  final String title;
  const category({Key? key, required this.items, required this.title}) : super(key: key);

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
          padding: const EdgeInsets.only(top: 8.0),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 29,
                child: Text(title, style: TextStyle(fontSize: 25),),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: list_color,
                  border: Border.all(color: border_color, width: 7),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ConstrainedBox(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
