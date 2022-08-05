import 'package:flutter/material.dart';
import 'package:mario_game/MainPage.dart';

class mushrooms extends StatelessWidget {
  const mushrooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: MushroomSize,
      width: MushroomSize,
      child: Image.asset('lib/Images/mushroom.png'),
      );
  }
}
