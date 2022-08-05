import 'dart:async';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  static double locationX = 0;
  static double locationY = 0, getYLocation = 0;
  static double eggLocation = -40, time = 0, height = 0, initHeight = 1;
  static int CheckensNumber = 5;
  double checkenHeight = 110, basketHeight = 100, appabarHeight = 0, notificationPanelHeight = 24/*80*/, y=-40;
  List<int> eggPositions = [25, 107, 190, 272, 355];//57-103, 125-165, 187-227, 250-290, 305-345
  static var randomNumber = Random();
  double preFallEggPosition = -40, endEggFall = 400, fallingegg = 0, yBas = 0;
  int countIn = 0, countOut = 0, oldEgg = egg, brokenEggsNumber = 10;
  static int egg = randomNumber.nextInt(CheckensNumber);
  bool paused = false, over = false, started = false, start = false, broken = false;
  var gameFont = GoogleFonts.pressStart2p(textStyle: TextStyle(color: Colors.black, fontSize: 20,));

  void startGame(){
    const duration = const Duration(microseconds: 10);
    Timer.periodic(duration, (Timer timer)
    {
      y++;
      if (y > endEggFall + 50) {
        checkEggFall();
        y = preFallEggPosition;
        timer.cancel();
        newEgg();
      }
      if((paused == true)||(over == true)){
        timer.cancel();
      }
      setState(() {
        eggLocation = y;
      });
    });
  }

  void checkEggFall(){
    setState(() {
      yBas = (locationY+2)*100;
      print('countIn: '+countIn.toString()+', yBas: '+yBas.toString()+', oldEgg: '+egg.toString());
      if(((yBas <= 103)&&(yBas >= 57)&&(egg==0))||((yBas <= 165)&&(yBas >= 125)&&(egg==1))||((yBas <= 227)&&(yBas >= 187)&&(egg==2))||((yBas <= 290)&&(yBas >= 250)&&(egg==3))||((yBas <= 345)&&(yBas >= 305)&&(egg==4))){
        print('condition coorect');
        countIn++;
        broken = false;
      }
      else{
        countOut++;
        broken = true;
        if(countOut == brokenEggsNumber){
          over = true;
          // started = false;
        }
      }
    });

  }

  void newEgg(){
    setState(() {
      oldEgg = egg;
      egg = randomNumber.nextInt(CheckensNumber);
      eggLocation = preFallEggPosition;
      startGame();
    });
  }

  Widget showEggs(){
    return Positioned(top: eggLocation, left: eggPositions[egg]+0.0,
        child: Image.asset('lib/own proj`s/Eggs Game/Images/egg.png', width: 40, height: 40,));
  }

  Widget showBrokenEggs() {
    if ((broken == true)) {
      return Positioned(top: endEggFall, left: eggPositions[oldEgg] + 0.0,
          child: Image.asset('lib/own proj`s/Eggs Game/Images/broken egg.png', width: 40, height: 40,));
    }
    else
      return Container();
  }

  Widget showPause_restart(){
    if(started == false){
      broken = false;
      start = true;
      paused = false;
      countIn = countOut = 0;
      eggLocation = -40;
      return Center(child: Text("Move the Basket to Start the Game", style: gameFont, textAlign: TextAlign.center,));
    }
    else if(paused){
      return Center(
        child: Stack( children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black38,
          ),
          Center(
            child: InkWell(
              onTap: (){setState(() {paused = false; startGame();});},
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.black54,),
                child: Icon(Icons.play_arrow_outlined, color: Colors.white, size: 120,),
              ),
            ),
          ),
          Positioned(
            top: 500,
            left: MediaQuery.of(context).size.width/2-25,
            child: Align(
              child: InkWell(
                onTap: (){setState(() {broken = false; paused = false; started = false; locationY = 0; eggLocation = -40; y = 0;});},
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.black54,),
                  child: Icon(Icons.restart_alt, color: Colors.white, size: 35,),
                ),
              ),
            ),
          ),
          Positioned(
            top: 135,
            left: MediaQuery.of(context).size.width/2-190,
            child: Align(
              child: Container(
                color: Colors.white54,
                padding: EdgeInsets.all(10),
                width: 380,
                child: Center(child: Column(children: [
                  Text('SCORE: '+(countIn-countOut).toString(), style: gameFont,),
                  SizedBox(height: 10,),
                  Text('COLLECTED EGGS: '+countIn.toString(), style: gameFont,),
                  SizedBox(height: 10,),
                  Text('BROKEN EGGS: '+countOut.toString(), style: gameFont,)
                ],)),
              ),
            ),
          ),
        ],),
      );
    }
    if(over == true){
      return InkWell(
        onTap: (){setState(() {over = false; broken = false; paused = false; started = false;countIn = countOut = 0; locationY = 0; eggLocation = -40;});},
        child: Center(
          child: Stack( children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black38,
            ),
            Positioned(
              top: 200,
              left: MediaQuery.of(context).size.width/2-175,
              child: InkWell(
                onTap: (){setState(() {over = false; broken = false; paused = false; started = false;countIn = countOut = 0; locationY = 0; y=0; eggLocation = -40;});},
                child: Container(
                  color: Colors.white54,
                  padding: EdgeInsets.all(10),
                  width: 350,
                  child: Center(child: Column(children: [
                    Text('GAME OVER!', style: gameFont,),
                    SizedBox(height: 50,),
                    SizedBox( width: MediaQuery.of(context).size.width-100,child: Text('YOU`VE BROKEN 10 EGGS!', style: gameFont, textAlign: TextAlign.center,)),
                    SizedBox(height: 50,),
                    Text('SCORE: '+(countIn-countOut).toString(), style: gameFont,)
                  ]))
                ),
              ),
            ),
          ],),
        ),
      )
                ;
    }
    else
      return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('lib/own proj`s/Eggs Game/Images/bg.png'), fit: BoxFit.cover)),
          child: Column(children: [
            SizedBox(height: notificationPanelHeight,),
            Container(height: checkenHeight,child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: CheckensNumber,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: CheckensNumber),
            itemBuilder: (BuildContext context, int index){
              return Image.asset('lib/own proj`s/Eggs Game/Images/chicken.png', width: 250, height: 250,);
            },
          )),
            Container(
              child: Container(
                width: double.infinity,
                child: Stack(
                  children: [
                  InkWell(
                    onTap: (){setState(() {
                      paused = true;
                    });},
                    child: Container(
                      height: MediaQuery.of(context).size.height-(checkenHeight + basketHeight + appabarHeight + notificationPanelHeight),

                    ),
                  ), 
                  showEggs(),
                  showBrokenEggs(),
                  //   Text(locationY.toString()+', '+yBas.toString(),style: TextStyle(fontSize: 40),),

                  ],
                ),
              )
            ),
            Listener(
              onPointerMove: (details) {setState(() {if(start){startGame(); start = false;} started = true; getYLocation = ((details.localPosition.dx/MediaQuery.of(context).size.width)-0.5)*((MediaQuery.of(context).size.width/200)+1.1);locationY = getYLocation;/*play? startGame():1;*/}); },  //mouse is late than the basket >> number(n) after "/200)+ n " is big..
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 500,
                height: basketHeight,
                child: Stack(
                  children: [
                    GestureDetector(
                      onTapDown: (TapDownDetails details) {if(start){startGame(); start = false;} started = true; setState(() {getYLocation = ((details.localPosition.dx/MediaQuery.of(context).size.width)-0.5)*((MediaQuery.of(context).size.width/200)+1.1);locationY = getYLocation;}); /*play? startGame():1;*/},  //mouse is late than the basket >> number(n) after "/200)+ n " is big..
                      child: Container(
                        color: Colors.black26,
                        child: AnimatedContainer(
                            alignment: Alignment(locationY, 0),
                            duration: Duration(milliseconds: 0),
                            // child: Container(width: 100, height: 100, decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.white,))
                            child: Image.asset('lib/own proj`s/Eggs Game/Images/basket.png', width: 150, height: 150,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],),
        ),

        showPause_restart()

      ],
      ),
    );
  }
}
