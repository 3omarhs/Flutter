import 'package:flutter/material.dart';

class ColumnSpace extends StatelessWidget {
  final double height;
  const ColumnSpace({Key? key, this.height=15}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(height: height,);
  }
}
