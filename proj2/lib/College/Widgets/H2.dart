import 'package:flutter/material.dart';

class H2 extends StatelessWidget {
  final String str;
  const H2({Key? key, required this.str}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(str, style: TextStyle(
      fontSize: 20,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
    ),);
  }
}
