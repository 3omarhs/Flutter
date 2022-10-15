import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';

class Tile_Button extends StatelessWidget {
  final onPressed;
  final Widget child;
  const Tile_Button({Key? key, this.onPressed, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        // backgroundColor: MaterialStateProperty.all<Color>(color_1),
        // primary: color_1,
        // side: BorderSide(width: 5.0, color: Colors.red,)),
        side: BorderSide(color: color_4),
        primary: Colors.white,
        padding: const EdgeInsets.fromLTRB(5, 15, 5, 15)
      ),
    );
  }
}
