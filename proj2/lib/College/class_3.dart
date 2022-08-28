import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proj2/College/class_6.dart';


void main() {
  runApp(const App());
}
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}
