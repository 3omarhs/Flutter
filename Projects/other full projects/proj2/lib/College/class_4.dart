import 'package:flutter/material.dart';
import 'package:proj2/College/MyHomePage4.dart';

void main() {
  runApp(const MyMaterialApp());
}


class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage1(),
    );
  }
}
