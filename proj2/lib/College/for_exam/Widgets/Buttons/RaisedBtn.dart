
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
        padding: EdgeInsets.all(20),

       shape: RoundedRectangleBorder(
           side: BorderSide(width: 2 , color: Colors.red , style: BorderStyle.solid),
           borderRadius: BorderRadius.circular(50),
       ),
       textColor: foreColor,
    );
  }
}
