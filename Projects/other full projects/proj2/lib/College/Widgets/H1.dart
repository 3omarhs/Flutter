import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final String str;
  const H1({Key? key, required this.str}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(str, style: TextStyle(
      fontSize: 30,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),);
  }
}
