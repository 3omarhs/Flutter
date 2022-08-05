import 'package:flutter/material.dart';


// stful..
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {  //the "_" is for private..
  @override
  Widget buildContainer(Color c, String t){
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: c,
        child: Text(t),
        margin: EdgeInsets.all(10),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(  //we will take Column, Row, warp, SingleChildScrollView
        children: [
          buildContainer(Colors.red, "Red Color"),
          buildContainer(Colors.orange, "Orange Color"),
          buildContainer(Colors.blue, "Blue Color"),
          buildContainer(Colors.green, "Green Color"),
        ],
      ),
    );
    //Container();
  }
}