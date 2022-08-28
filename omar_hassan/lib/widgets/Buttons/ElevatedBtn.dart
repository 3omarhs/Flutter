
import 'package:flutter/material.dart';

class ElevatedBtn extends StatelessWidget {
  final String str;
  final Color? bgColor;
  final Color? txtColor;
  final VoidCallback? onPressed;
  const ElevatedBtn({Key? key, required this.str , this.bgColor, this.txtColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ,
        child: Text(str),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(bgColor),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          padding: MaterialStateProperty.all(EdgeInsets.all(30)),
        ),

      ),
    );
  }
}
