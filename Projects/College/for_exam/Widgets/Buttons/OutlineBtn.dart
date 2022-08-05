
import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  final String str;
  final Color? bgColor;
  final Color? txtColor;
  const OutlineBtn({Key? key, required this.str , this.bgColor, this.txtColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {} ,
      child: Text(str),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.orange),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.all(10)),
        shape:MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            side: BorderSide( color: Colors.green , width: 20 ),
          ),
        ),
      ),

    );
  }
}
