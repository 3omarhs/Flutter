import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: jump(),
    );
  }
}


class jump extends StatefulWidget {

  const jump({Key? key, }) : super(key: key);

  @override
  State<jump> createState() => _jumpState();
}

class _jumpState extends State<jump> {

  static double locationX = 0;
  static double locationY = 0;
  double time = 0;
  double height = 0;
  double initHeight = locationY;
  bool midjump = false;
  double y = 0;

  void preJump(){
    time = 0;
    initHeight = locationY;
  }

  void jump(){
    if(midjump == false){     //disable double jump..
      midjump = true;
      preJump();
      Timer.periodic(Duration(milliseconds: 50), (timer) {
        time += 0.05;
        setState(() {
          locationY = 0;
        });
      });
    }

  }
  _onTapDown(TapDownDetails details) {
    jump();
    var x = details.globalPosition.dx;
    var y = details.globalPosition.dy;
    // or user the local position method to get the offset
    print(details.localPosition);
    print("tap down " + x.toString() + ", " + y.toString());
  }

  void updateLocation(PointerEvent details) {
    // setState(() {
    y = details.position.dx/410;
    // y = y/2;
    if(y<0.5){y=y-0.5;}
    locationY = y;
    print("...");
    // });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(child: Container(height: 150,child: Text('y = '+locationY.toString(), style: TextStyle(fontSize: 40),))),
        Listener(
          onPointerMove: (details) {setState(() {locationY = ((details.localPosition.dx/MediaQuery.of(context).size.width)-0.5)*((MediaQuery.of(context).size.width/200)+0.6); });},
          child: Container(
            width: 500,
            height: 530,
            child: Stack(
              children: [
                GestureDetector(
                  onTapDown: (TapDownDetails details) {setState(() {locationY = ((details.localPosition.dx/MediaQuery.of(context).size.width)-0.5)*((MediaQuery.of(context).size.width/200)+0.6); });},  //mouse is late than the basket >> number(n) after "/200)+ n " is big..
                  child: Container(
                    color: Colors.black26,
                    child: AnimatedContainer(
                        alignment: Alignment(locationY, 0),
                        duration: Duration(milliseconds: 0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white,),
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],),
    );
  }
}
