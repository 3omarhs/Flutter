import 'package:flutter/material.dart';
import 'package:omar_hassan/pages/Page1.dart';
import 'package:omar_hassan/pages/Page2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page2(),
    );
  }
}

