import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class rounded_image_1 extends StatelessWidget {
  final String img;
  const rounded_image_1({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(300),
        child: Image.asset(img, height: 55, width: 55, fit: BoxFit.cover,),
      ),
    );
  }
}
