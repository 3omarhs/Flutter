import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class item_in_categ_2 extends StatelessWidget {
  final String img;
  const item_in_categ_2({Key? key, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: item_border_color, width: 10 ),
            borderRadius: BorderRadius.circular(30)),
        width: 220,
        height: 230,
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                child: Image.asset(img, height: 200, width: double.infinity, fit: BoxFit.cover,),
              ),
            ),
            Container(
              width: double.infinity,
              height: 30,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 0, 234, 1),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
              ),
              child: Center(child: Text("title")),
            )
          ],
        ),
      ),
    );
  }
}
