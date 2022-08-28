
import 'package:flutter/material.dart';
class RaisedBtn extends StatelessWidget {
  final String? label;
  final Color? bgColor;
  final Color? foreColor;
  final VoidCallback? onPressed;
  const RaisedBtn({ Key? key , this.onPressed, required this.bgColor , required this.foreColor , required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        onPressed: onPressed ,
        child: Text(label!),
        color: bgColor,
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 115),
       shape : Border.fromBorderSide(  BorderSide(width: 2,color: Colors.white,style: BorderStyle.solid)),
       textColor: foreColor,
    );
  }
}
