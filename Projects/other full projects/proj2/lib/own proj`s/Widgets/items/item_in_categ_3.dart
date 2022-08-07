import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class item_in_categ_3 extends StatelessWidget {
  final String img;
  const item_in_categ_3({Key? key, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: item_border_color, width: 10 ),
                borderRadius: BorderRadius.circular(30)),
            width: 220,
            height: 220,
            margin: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Image.asset(img, height: 200, width: double.infinity, fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 30,
              right: 30,
              child: Container(
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(15)),
                    color: Colors.black54,),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Center(child: Text("title", style: TextStyle(fontSize: 22, color: Colors.white), softWrap: true, overflow: TextOverflow.fade,))
              )
          ),
        ],
      ),
    );
  }
}
