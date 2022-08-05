import 'dart:math';

import 'package:flutter/material.dart';

class JumpMario extends StatelessWidget {
  final direction;
  final MarioSize;
  const JumpMario({Key? key, this.direction, this.MarioSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(direction == "right"){
      return Container(
        width: MarioSize,
        height: MarioSize,
        child: Image.asset('lib/Images/jump.png'),
      );
    }
    else{
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
            width: MarioSize,
            height: MarioSize,
            child: Image.asset('lib/Images/jump.png')
        ),
      );
    }
  }
}
