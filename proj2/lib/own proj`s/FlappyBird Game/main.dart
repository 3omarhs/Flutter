import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/FlappyBird%20Game/MainPage.dart';

void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
