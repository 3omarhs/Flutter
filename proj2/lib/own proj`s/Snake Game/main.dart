import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Snake%20Game/MainPage.dart';

// Snake Game
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
