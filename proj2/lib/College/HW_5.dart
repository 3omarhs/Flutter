import 'package:flutter/material.dart';

void main(){
  runApp(MyMainPage());
}

class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyMainPage1()
    );
  }
}

class MyMainPage1 extends StatefulWidget {
  const MyMainPage1({Key? key}) : super(key: key);

  @override
  State<MyMainPage1> createState() => _MyMainPage1State();
}

class _MyMainPage1State extends State<MyMainPage1> {
  String img = "";
  button(String label, String image){
    return SizedBox(child: ElevatedButton(onPressed: (){setState(() {img = image;});}, child: Text(label)), width: 120, height: 75,);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              width: 300, height: 300,
              child: Image(image: AssetImage(img)),
              decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 5),),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              button("p1", "assets/p1.jpg"),
              button("p2", "assets/p5.jpg"),
              button("p3", "assets/p6.jpg"),
            ],
          )
        ],
      ),
    );
  }
}
