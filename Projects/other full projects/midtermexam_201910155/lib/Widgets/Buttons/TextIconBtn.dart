
import 'package:flutter/material.dart';

class TextIconBtn extends StatelessWidget {
  final String str;
  final Color? bgColor;
  final Color? txtColor;
  final Icon ico;
  final VoidCallback? onPressed;

  const TextIconBtn(
      {
        Key? key,
        this.onPressed,
        required this.ico,
        required this.str ,
        this.bgColor,
        this.txtColor
     }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed ,
      label: Text(str),
      icon: ico,
      style: ButtonStyle(
       backgroundColor: MaterialStateProperty.all(bgColor),
        foregroundColor: MaterialStateProperty.all(txtColor),
        padding: MaterialStateProperty.all(EdgeInsets.all(30)),
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
