import 'package:flutter/material.dart';
import 'dart:math';

class Mario extends StatelessWidget {
  final direction;
  final midRun;
  final MarioSize;
  const Mario({Key? key, this.direction, this.midRun, this.MarioSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(direction == "right"){
      return Container(
        width: MarioSize,
        height: MarioSize,
        child: midRun? Image.asset('lib/own proj`s/Mario Game/Images/walk.png') : Image.asset('lib/own proj`s/Mario Game/Images/stop.png'),
      );
    }
    else{
      return Transform(
        alignment: Alignment.center,
        transform: Matrix4.rotationY(pi),
        child: Container(
          width: MarioSize,
          height: MarioSize,
          child: midRun? Image.asset('lib/own proj`s/Mario Game/Images/walk.png') : Image.asset('lib/own proj`s/Mario Game/Images/stop.png'),
        ),
      );
    }
  }
}
