
import 'package:flutter/material.dart';
class FlatIconBtn extends StatelessWidget {
  final String? label;
  final Color? bgColor;
  final Color? foreColor;
  final Icon ico;
  final VoidCallback? onPressed;
  const FlatIconBtn({Key? key ,required this.ico, required this.bgColor , required this.foreColor , required this.label , this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      onPressed: onPressed ,
      label: Text(label!),
      icon:ico,
     // color: bgColor,
    //  padding: EdgeInsets.all(20),
     shape: RoundedRectangleBorder(
        side: BorderSide(width: 2 , color: Colors.red , style: BorderStyle.solid),
        //   borderRadius: BorderRadius.circular(50),
      ),
    //  textColor: foreColor,
    );
  }
}