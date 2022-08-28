import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class item_in_categ_6 extends StatelessWidget {
  final String img;
  const item_in_categ_6({Key? key, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
      },
      child: Stack(
        children: [
          Container(
            width: 220,
            height: 220,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  spreadRadius: 8,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 220,
                  child: ClipRRect( //CircleAvatar
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                    child: Image.asset(img, height: 200, width: double.infinity, fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              bottom: 40,
              right: 20,
              child: Container(
                  width: 220,
                  color: Colors.black54,
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Center(child: Text("title", style: TextStyle(fontSize: 22, color: Colors.white), softWrap: true, overflow: TextOverflow.fade,))
              )
          ),
        ],
      ),
    );
  }
}
