import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData ico;
  final function;
  static bool holdingButton = false;
  const MyButton({Key? key, required this.ico, this.function}) : super(key: key);

  bool HoldingButtonOn(){
    return holdingButton;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        holdingButton = true;
        function();
      },
      onTapUp: (details) {
        holdingButton = false;
      },
      child: Container(
        width: 65,
        height: 65,
        child: Center(
          child: Icon(ico, color: Colors.white,),
        ),
        decoration: BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
