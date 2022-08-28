import 'package:flutter/material.dart';
import 'package:proj2/College/Widgets/inputText.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: inputText(hText: "user name", obsecure: false),
    );
  }
}
