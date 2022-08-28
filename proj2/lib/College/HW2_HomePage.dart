import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  @override

  Widget buildCont1(Color c , String t)
  {
    return Container (
      width:100,
      height:100,
      color: c,
      child: Text(t),
      margin: EdgeInsets.only(right: 20),
    );
  }
  Widget myLabel(String t)
  {
    return Text("Product:", textAlign: TextAlign.right, style: TextStyle(fontSize: 30,),);
  }
  Widget buildCont2(Color c , String t)
  {
    return Container (
      width:185,
      height:185,
      color: c,
      child: Text(t),
      margin: EdgeInsets.only(right: 20),
    );
  }
  Widget my_checkbox() {
    return Checkbox(value: false, onChanged: (bool? value) {});
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
          child: Column(
            children: [
              myLabel("Categories:"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCont1(Colors.red, "1"),
                    buildCont1(Colors.green, "2"),
                    buildCont1(Colors.blue, "3"),
                    buildCont1(Colors.grey, "4"),
                    buildCont1(Colors.purple, "5"),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              myLabel("Product:"),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCont2(Colors.purple, "1"),
                    buildCont2(Colors.yellow, "2"),
                    buildCont2(Colors.pink, "3"),
                    buildCont2(Colors.grey, "4"),
                    buildCont2(Colors.red, "5"),
                    buildCont2(Colors.green, "6"),
                    buildCont2(Colors.black, "7"),
                    buildCont2(Colors.blue, "8"),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              myLabel("Services:"),
              
              Row(
                children: [
                  my_checkbox(),
                  Text("Text1", style: my_style(),)
                ],
              ),
              Row(
                children: [
                  my_checkbox(),
                  Text("Text1", style: my_style(),)
                ],
              )
            ],
          ),
        )
    );
  }
}
