import 'package:flutter/material.dart';

class HW3_HomePage extends StatefulWidget {
  const HW3_HomePage({Key? key}) : super(key: key);

  @override
  State<HW3_HomePage> createState() => _HW3_HomePageState();
}

class _HW3_HomePageState extends State<HW3_HomePage> {
  @override

  Widget buildCont1(String s)
  {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Image (
        image: AssetImage(s),
        width:100,
        height:100,
        fit: BoxFit.fill
      ),
    );
  }
  Widget myLabel(String t)
  {
    return Container(
        width: double.infinity,
        alignment: Alignment.topLeft,
        child: Text(t, style: TextStyle(fontSize: 30,),)
    );
  }
  Widget buildCont2(String s)
  {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Image (
        image: AssetImage(s),
        width:180,
        height:180,
        fit: BoxFit.fill
      ),
    );
  }
  Widget buildCont3(String s) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Image (
        image: AssetImage(s),
        width:50,
        height:50,
        fit: BoxFit.fill,
      ),
    );
  }
  TextStyle my_style() {
    return TextStyle(
        fontSize: 25,
        color: Colors.blue
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Align(
            child: Column(
              children: [
                myLabel("Categories:"),
                SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCont1("assets/p1.jpg"),
                      buildCont1("assets/p2.jpg"),
                      buildCont1("assets/p3.jpg"),
                      buildCont1("assets/p4.jpg"),
                      buildCont1("assets/p5.jpg"),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                myLabel("Product:"),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildCont2("assets/p8.jpg"),
                      buildCont2("assets/p6.jpg"),
                      buildCont2("assets/p4.jpg"),
                      buildCont2("assets/p2.jpg"),
                      buildCont2("assets/p5.jpg"),
                      buildCont2("assets/p3.jpg"),
                      buildCont2("assets/p7.jpg"),
                      buildCont2("assets/p1.jpg"),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                myLabel("Services:"),

                Row(
                  children: [
                    buildCont3("assets/p7.jpg"),
                    Text("Text1", style: my_style(),)
                  ],
                ),
                Row(
                  children: [
                    buildCont3("assets/p5.jpg"),
                    Text("Text1", style: my_style(),)
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
