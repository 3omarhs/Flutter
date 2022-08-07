import 'package:midtermexam_201910155/Widgets/Images/ProjImage.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  TextEditingController n1Cnt = TextEditingController();
  TextEditingController n2Cnt = TextEditingController();
  TextEditingController n3Cnt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products',style: TextStyle(color: Colors.deepPurple),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Item('p1', 'Air Max Bella', 'Red , Green item', '20'),
          Item('p2', 'Nike Air Zoom', 'Orange , Red', '18'),
          Item('p3', 'Nike Metcorn 6', 'Blue , red', '14'),
          Item('p4', 'Nike Air zoom 2', 'Blank blue', '22'),
          Center(child: Text('Colors',style: TextStyle(color: Colors.blue),)),
          SizedBox(height: 30,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(color: Colors.red,width: 60,height: 60,),
                SizedBox(width: 30,),
                Container(color: Colors.green,width: 60,height: 60,),
                SizedBox(width: 30,),
                Container(color: Colors.blue,width: 60,height: 60,),
                SizedBox(width: 30,),
                Container(color: Colors.orange,width: 60,height: 60,),
              ],
            ),
          )

        ],
      ),
    );
  }

}


  Widget Item(String imgPath,String txt1,String txt2,String price) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          ProjectImage(path: 'assests/$imgPath.png'),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(txt1,style: TextStyle(color: Colors.black,fontSize: 20),),
                Text(txt2,style: TextStyle(color: Colors.deepPurple),),
              ],
            ),
          ),
          SizedBox(width: 20,),
          Text(price,style: TextStyle(color: Colors.red,fontSize: 20),),

        ],
      ),
    );
  }
