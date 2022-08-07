import 'package:flutter/material.dart';

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({Key? key}) : super(key: key);

  @override
  State<MyHomePage1> createState() => _MyHomePage1State();
}

class _MyHomePage1State extends State<MyHomePage1> {
  @override

  Widget buildCont(Color c , String t)
  {
    return Container (
      width:100,
      height:100,
      color: c,
      child: Text(t),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Row (
        children: [
          buildCont(Colors.red, "Red Color"),
          buildCont(Colors.orange, "orange Color"),
          buildCont(Colors.green, "Green Color"),
          buildCont(Colors.green, "Green Color"),

        ],
      ),
    );
  }
}
