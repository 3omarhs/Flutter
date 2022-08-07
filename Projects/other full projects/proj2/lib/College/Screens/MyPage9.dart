import 'package:flutter/material.dart';
import 'package:proj2/College/Widgets/H1.dart';
import 'package:proj2/College/Widgets/H2.dart';
import 'package:proj2/College/Widgets/inputText.dart';

class MyPage9 extends StatefulWidget {
  const MyPage9({Key? key}) : super(key: key);

  @override
  State<MyPage9> createState() => _MyPageState9();
}

class _MyPageState9 extends State<MyPage9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          H1(str: "Header 1"),
          H1(str: "Header 2"),
          H2(str: "Header 2"),
          inputText(hText: "user name", obsecure: false),
          inputText(hText: "password", obsecure: true, ico: Icon(Icons.lock),),
        ],
      ),
    );
  }
}
