
import 'package:flutter/material.dart';
class RaisedIconBtn extends StatelessWidget {
  final String? label;
  final Color? bgColor;
  final Color? foreColor;
  final Icon ico;
  const RaisedIconBtn({Key? key ,required this.ico, required this.bgColor , required this.foreColor , required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: () {} ,
      label: Text(label!),
      icon:ico,
      color: bgColor,
      padding: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 2 , color: Colors.red , style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(50),
      ),
      textColor: foreColor,
    );
  }
}