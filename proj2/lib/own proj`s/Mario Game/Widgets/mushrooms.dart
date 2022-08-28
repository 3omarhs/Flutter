import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Mario%20Game/MainPage.dart';

class mushrooms extends StatelessWidget {
  const mushrooms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: MushroomSize,
      width: MushroomSize,
      child: Image.asset('lib/own proj`s/Mario Game/Images/mushroom.png'),
      );
  }
}
