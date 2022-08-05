import 'package:flutter/material.dart';
import 'package:proj2/College/HW3_HomePage.dart';

void main() {
  runApp(const MyMaterialApp());
}


class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HW3_HomePage(),
    );
  }
}