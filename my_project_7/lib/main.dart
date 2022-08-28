import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget info(String title, Color color){
    return Container(
      padding: EdgeInsets.all(30),
      child: Text(title, style: TextStyle(fontSize: 30)),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15)
      ),
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text('Flutter Demo Home Page')),
          body: Container(
              child: GridView(
            children: [
              info("title1", Colors.yellow),
              info("title2", Colors.green),
              info("title3", Colors.black),
              info("title4", Colors.blue),
              info("title5", Colors.red),
              info("title6", Colors.brown),
              info("title7", Colors.white70),
              info("title8", Colors.pink),
              info("title9", Colors.purple),
              info("title10", Colors.greenAccent),
              info("title11", Colors.lightBlueAccent),
              info("title12", Colors.amber),
              info("title13", Colors.cyan),
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200, //width size (with pixel) for each item
              childAspectRatio: 3 / 2, //نسبة العرض الى الارتفاع...
              crossAxisSpacing: 20, //size between items in width
              mainAxisSpacing: 20, //size between items in height
            ),
          )),
        ));
  }
}
