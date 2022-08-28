import 'package:flutter/material.dart';

class ContainerCoursees extends StatelessWidget {
  final String img;
  const ContainerCoursees({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Image(image: AssetImage(img), width: 111, height: 111,fit: BoxFit.fill,),
    );
  }
}
