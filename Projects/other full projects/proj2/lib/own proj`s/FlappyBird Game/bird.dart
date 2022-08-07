import 'package:flutter/material.dart';

class bird extends StatelessWidget {
  const bird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      child: Image.asset('lib/own proj`s/FlappyBird Game/Images/bird.png')
    );
  }
}
