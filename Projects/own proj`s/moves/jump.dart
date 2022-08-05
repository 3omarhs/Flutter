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
  static double locationY = 1;
  double time = 0;
  double height = 0;
  double initHeight = locationY;
  bool midjump = false;

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
        height = -4.9 * time * time + 5 * time;

        if(initHeight - height > 1){
          midjump = false;
          setState(() {
            locationY = 1;
          });
          timer.cancel();
        }
        else{
          setState(() {
            locationY = initHeight - height;
          });
        }
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 3,
            child: Stack(
              children: [
                Container(
                  color: Colors.black26,
                  child: AnimatedContainer(
                      alignment: Alignment(locationX, locationY),
                      duration: Duration(milliseconds: 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white,),
                      )
                  ),
                ),
              ],
            )
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 100),
          child: Container(width: double.infinity, color: Colors.green, height: 10,),
        ),
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.black87,
              child: SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        jump();
                      });
                    },
                    child: Icon(Icons.arrow_upward, color: Colors.white,)
                ),
              ),
            )
        ),
      ],),
    );
  }
}
