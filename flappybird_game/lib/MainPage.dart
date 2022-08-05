import 'dart:async';
import 'dart:ui';
import 'package:flappybird_game/barriers.dart';
import 'package:flappybird_game/bird.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static double birdYaxis = 0;
  bool nowjump = false;
  double time = 0;
  double height = 0;
  double initialHeight = birdYaxis;
  bool gameHasStarted = false;
  static double barrierXone = 1;
  double barrierXtwo = barrierXone + 1.75;
  double barrier2size =  (physicalHeight/3.5)/3;  //2956.0
  double barrier1size = ((physicalHeight/3.5)/3)/2;
  int score = 0, highScore = 0;
  double detectedY = 0, lasetdetect =0, lasetdetect2 = 0;
  double barrier2lowerSize = (physicalHeight/3.5)/8, barrier1lowerSize = ((physicalHeight/3.5)/2)/2;//, barrier2size = 250;
  var pixelRatio = window.devicePixelRatio;
  static var physicalScreenSize = window.physicalSize;
  static var physicalHeight = physicalScreenSize.height;
  double upperBarrier1 = -0.6, upperBarrier2 = 0;
  double lowerBarrier1 = 0.3, lowerBarrier2 = 0.7;
  var gameFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.white, fontSize: 20)
  );
  var gameFont1 = GoogleFonts.pressStart2p(
      textStyle: TextStyle(color: Colors.white, fontSize: 25)
  );

  final containerKey1 = GlobalKey();
  final containerKey2 = GlobalKey();

  void jump(){
    setState(() {
      time = 0;
      initialHeight = birdYaxis;
    });
    print('screen size= $physicalHeight');
  }

  @override
  void initState() {
    setState(() {
      birdYaxis = 0;
      height = 0;
      initialHeight = birdYaxis;
      barrierXone = 1;
      barrierXtwo = barrierXone + 1.75;
      score = 0;
      time = 0;
    });
    super.initState();
  }

  void _showDialog(){
    AwesomeDialog(dismissOnTouchOutside: false,
      // barrierDismissible: false,
      context: context,
      // builder: (BuildContext context){
      //   return AlertDialog(
      //     backgroundColor: Colors.brown,
      //     title: Text('GAME OVER', style: TextStyle(color: Colors.white),),
      //     content: Text('Score: ' + score.toString(), style: TextStyle(color: Colors.white),),
      //     actions: [FlatButton(
      //         onPressed: (){
      //           if(score > highScore){
      //             highScore = score;
      //           }
      //           // initState();
      //           setState(() {
      //             gameHasStarted = false;
      //           });
      //           Navigator.of(context).pop();
      //           initState();
      //         },
      //         child: Text('PLAY AGAIN', style: TextStyle(color: Colors.white),)
      //     )],
      //   );
      // }
      title: 'GAME OVER',
      desc:'Score: ' + score.toString(),
      btnOkOnPress: (){
        if(score > highScore){
          highScore = score;
        }
        // initState();
        setState(() {
          gameHasStarted = false;
        });
        initState();
      },
    )..show();
  }

  void startGame(){
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;  //gravity equation>> y-4.9*t*exp(2)+5*t
      setState(() {
        // barrierXone -= 0.01;
        // barrierXtwo -= 0.01;
        birdYaxis = initialHeight - height;
      });

      setState(() {
        if(barrierXone < -2) {
          barrierXone += 3.5;
        }
        else{
          barrierXone -= 0.05;
        }
      });

      setState(() {
        if(barrierXtwo < -2) {
          barrierXtwo += 3.5;
        }
        else{
          barrierXtwo -= 0.05;
        }
        //   if(barrierXone < -1.7) {
        //     barrierXone += 3.3;
        //   }
        //   else{
        //     barrierXone -= 0.05;
        //   }
        // });
        //
        // setState(() {
        //   if(barrierXtwo < -1.7) {
        //     barrierXtwo += 3.3;
        //   }
        //   else{
        //     barrierXtwo -= 0.05;
        //   }
      });
      if(birdYaxis > 1){
        timer.cancel();
        // gameHasStarted = false;
        _showDialog();
      }
      if(barrierXone >= -0.35 && barrierXone <= 0.35){
        bool check = onCheckTap(1);
        if(check) {
          print('bird location: $birdYaxis');
          if(barrierXone - lasetdetect > 0.5)
            score ++;
          lasetdetect = barrierXone;
        }
        else{
          timer.cancel();
          _showDialog();
        }
      }
      if(barrierXtwo >= -0.35 && barrierXtwo <= 0.35){
        bool check = onCheckTap(2);
        if(check) {
          print('bird location: $birdYaxis');
          if(barrierXtwo - lasetdetect2 > 0.5)
            score ++;
          lasetdetect2 = barrierXtwo;
        }
        else{
          timer.cancel();
          _showDialog();
        }
      }
    });
  }

  bool onCheckTap(int num) {
    if(num == 1) {
      // if ((birdYaxis + 0.1) < -1 * (barrier1size / 1000)) //-0.2 ///// -1*(barrierXone*5)
      if ((birdYaxis < upperBarrier1)||(birdYaxis > lowerBarrier1)) //-0.2 ///// -1*(barrierXone*5)
        return false;
      else
        return true;
    }
    else if(num == 2){
      if ((birdYaxis <= upperBarrier2)||(birdYaxis > lowerBarrier2))//(barrier2lowerSize / 9900)) //-0.13 ///// -1*(barrierXone*5)
        return false;
      else
        return true;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (details){detectedY = ((details.localPosition.dy/MediaQuery.of(context).size.width)-0.5)*((MediaQuery.of(context).size.width/200)+1.1); print('y detected: $detectedY'); print('bird detected: $birdYaxis');},
      child: GestureDetector(
        onTap: (){
          if(gameHasStarted){
            jump();
          }
          else{
            startGame();
          }
        },
        child: Scaffold(
          body: Column(children: [
            Expanded(
                flex: 2,
                child: Stack(children: [
                  Image.asset('lib/Images/bg.png', fit: BoxFit.fitHeight, height: double.infinity,),
                  AnimatedContainer(
                    key: containerKey1,
                    alignment: Alignment(0, birdYaxis),
                    duration: Duration(milliseconds: 0),
                    // color: Colors.blue,
                    child: bird(),
                  ),
                  Container(
                    alignment: Alignment(0, 0.3),
                    child: gameHasStarted? Text('') : Text('TAP TO PLAY', style: gameFont1/*TextStyle(fontSize: 25, color: Colors.white),*/),
                  ),
                  AnimatedContainer(
                      alignment: Alignment(barrierXone, 1.1),
                      duration: Duration(milliseconds: 0),
                      child: barriers(size: barrier1lowerSize)
                  ),
                  AnimatedContainer(
                      key: containerKey2,
                      alignment: Alignment(barrierXone, -1.1),
                      duration: Duration(milliseconds: 0),
                      child: barriers(size: barrier1size)
                  ),
                  AnimatedContainer(
                      alignment: Alignment(barrierXtwo, 1.1),
                      duration: Duration(milliseconds: 0),
                      child: barriers(size: barrier2lowerSize)
                  ),
                  AnimatedContainer(
                      alignment: Alignment(barrierXtwo, -1.1),
                      duration: Duration(milliseconds: 0),
                      child: barriers(size: barrier2size)
                  ),
                ],)
            ),

            Expanded(
              flex: 1,
              child: Column(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 15,
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    color: Colors.brown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('SCORE', style: gameFont/*TextStyle(color: Colors.white, fontSize: 20),*/), SizedBox(height: 20,), Text(score.toString(), style: gameFont,)],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(width: 100, child: Text('BEST SCORE', style: gameFont, textAlign: TextAlign.center,/*TextStyle(color: Colors.white, fontSize: 20),*/)), SizedBox(height: 20,), Text(highScore.toString(), style: gameFont,)],
                        )
                      ],),
                  ),
                ),
              ],
              ),
            )
          ],),
        ),
      ),
    );
  }
}
