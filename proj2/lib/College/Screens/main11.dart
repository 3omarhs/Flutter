import 'package:flutter/material.dart';
import 'package:proj2/College/Screens/MyPage11.dart';

void main(){
  runApp(Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage11(),
    );
  }
}
