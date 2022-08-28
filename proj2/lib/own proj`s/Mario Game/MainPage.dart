import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj2/own%20proj%60s/Mario%20Game/Widgets/JumpMario.dart';
import 'package:proj2/own%20proj%60s/Mario%20Game/Widgets/Mario.dart';
import 'package:proj2/own%20proj%60s/Mario%20Game/Widgets/MyButton.dart';
import 'package:proj2/own%20proj%60s/Mario%20Game/Widgets/mushrooms.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

double MarioSize = 50;
double MushroomSize = 35;

class _MainPageState extends State<MainPage> {

  static double marioX = 0;
  static double marioY = 1;
  double time = 0;
  double height = 0;
  double initHeight = marioY;
  String direction = "right";
  bool midrun = false;
  bool midjump = false;
  var gameFont = GoogleFonts.pressStart2p(
    textStyle: TextStyle(color: Colors.white, fontSize: 20)
  );
  double shroomX = 0.5;
  double shroomY = 1;
  double mariosize = MarioSize;
  double mariosizebig = MarioSize*2;

  void preJump(){
    time = 0;
    initHeight = marioY;
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
            marioY = 1;
          });
          timer.cancel();
        }
        else{
          setState(() {
            marioY = initHeight - height;
          });
        }
      });
    }
  }

  void right(){
    direction = "right";
    ateShrooms();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(MyButton.holdingButton == true && (marioX + 0.02) < 1){
        setState(() {
          marioX += 0.02;
          midrun = !midrun;
        });
      }
      else{
        timer.cancel();
      }
    });
  }

  void left(){
    direction = "left";
    ateShrooms();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(MyButton.holdingButton == true && (marioX -0.02) > -1){
        setState(() {
          marioX -= 0.02;
          midrun = !midrun;
        });
      }
      else{
        timer.cancel();
      }
    });
  }

  void ateShrooms(){
    if((marioX - shroomX).abs() < 0.1 && (marioY - shroomY).abs() < 0.1 ){
      shroomX = 2;         //if eaten move from the screen
      mariosize = mariosizebig;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(children: [
              Container(
                color: Colors.blue,
                child: AnimatedContainer(
                  alignment: Alignment(marioX, marioY),
                  duration: Duration(milliseconds: 0),
                  child: midjump? JumpMario(direction: direction, MarioSize: mariosize,) : Mario(direction: direction, midRun: midrun, MarioSize: mariosize),
                ),
              ),

              Container(
                alignment: Alignment(shroomX, shroomY),
                  child: mushrooms()
              ),

              Padding(
                padding: const EdgeInsets.only(top: 35.0, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Column(children: [
                    Text("MARIO", style: gameFont),
                    SizedBox(height: 10,),
                    Text("0000", style: gameFont)
                  ],),
                  Column(children: [
                    Text("WORLD", style: gameFont),
                    SizedBox(height: 10,),
                    Text("1-1", style: gameFont)
                  ],),
                  Column(children: [
                    Text("TIME", style: gameFont),
                    SizedBox(height: 10,),
                    Text("9999", style: gameFont)
                  ],)
                ],),
              )
            ],)
          ),
          Container(
            height: 10,
            color: Colors.green,
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                MyButton(ico: Icons.arrow_back, function: left),
                MyButton(ico: Icons.arrow_upward, function: jump),
                MyButton(ico: Icons.arrow_forward, function: right),
              ],),
            )
          )
        ],
      ),
    );
  }
}
