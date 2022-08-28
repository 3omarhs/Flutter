import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Mario%20Game/MainPage.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()
    );
  }
}
