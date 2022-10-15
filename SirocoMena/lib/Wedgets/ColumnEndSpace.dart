import 'package:flutter/material.dart';

class ColumnEndSpace extends StatelessWidget {
  final double height;
  const ColumnEndSpace({Key? key, this.height=50}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(height: height,);
  }
}
