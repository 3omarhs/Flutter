import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class item_in_categ extends StatelessWidget {
  final String img;
  const item_in_categ({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
      },
      child: Container(
          width: 220,
          height: 220,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover
              ),
              border: Border.all(color: item_border_color, width: 10 ),
              borderRadius: BorderRadius.circular(30)
          ),
        ),
    );

  }
}
