import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pacman_game/pacman.dart';

import 'barriers.dart';
import 'ghost.dart';
import 'pixel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static int numberOfSquares = numberInRow * 17;
  static int numberInRow = 11;
  int player = 166;
  int ghost = -1;
  bool mouthClosed = true;
  bool done = false, paused = false, restarted = false;
  int allFoodCount = 0;
  String start_pause = 'P L A Y';
  var gameFont = GoogleFonts.pressStart2p(textStyle: TextStyle(color: Colors.black, fontSize: 20,));
  var gameFontForStart = GoogleFonts.pressStart2p(textStyle: TextStyle(color: Colors.white, fontSize: 20,));

  static List<int> barriers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    22,
    33,
    44,
    55,
    66,
    77,
    99,
    110,
    121,
    132,
    143,
    154,
    165,
    176,
    177,
    178,
    179,
    180,
    181,
    182,
    183,
    184,
    185,
    186,
    175,
    164,
    153,
    142,
    131,
    120,
    109,
    87,
    76,
    65,
    54,
    43,
    32,
    21,
    78,
    79,
    80,
    100,
    101,
    102,
    84,
    85,
    86,
    106,
    107,
    108,
    24,
    35,
    46,
    57,
    30,
    41,
    52,
    63,
    81,
    70,
    59,
    61,
    72,
    83,
    26,
    28,
    37,
    38,
    39,
    123,
    134,
    145,
    156,
    129,
    140,
    151,
    162,
    103,
    114,
    125,
    105,
    116,
    127,
    147,
    148,
    149,
    158,
    160
  ];

  List<int> food = [];

  void getFood() {
    food.clear();
    for (int i = 0; i < numberOfSquares; i++) {
      if (!barriers.contains(i)) {
        food.add(i);
      }
    }
    allFoodCount = food.length;
  }

  String direction = "right";
  bool gameStarted = false;

  void startGame() {
    print(MediaQuery.of(context).size.width);
    moveGhost();
    gameStarted = true;
    if(!paused)
      getFood();
    start_pause = 'P A U S E';
    Duration duration = Duration(milliseconds: 220);
    Timer.periodic(duration, (timer) {
      if (food.contains(player)) {
        food.remove(player);
        if(food.length == 0){
          done = true;
        }
      }

      switch (direction) {
        case "right":
          moveRight();
          break;

        case "up":
          moveUp();

          break;

        case "left":
          moveLeft();

          break;

        case "down":
          moveDown();

          break;
      }

      if(paused == true || done == true){
        timer.cancel();
        restarted = false;
      }
    });
  }

  String ghostDirection = "left"; // initial
  void moveGhost() {
    Duration ghostSpeed = Duration(milliseconds: 500);
    Timer.periodic(ghostSpeed, (timer) {
      if (!barriers.contains(ghost - 1) && ghostDirection != "right") {
        ghostDirection = "left";
      } else if (!barriers.contains(ghost - numberInRow) &&
          ghostDirection != "down") {
        ghostDirection = "up";
      } else if (!barriers.contains(ghost + numberInRow) &&
          ghostDirection != "up") {
        ghostDirection = "down";
      } else if (!barriers.contains(ghost + 1) && ghostDirection != "left") {
        ghostDirection = "right";
      }

      switch (ghostDirection) {
        case "right":
          setState(() {
            ghost++;
          });
          break;

        case "up":
          setState(() {
            ghost -= numberInRow;
          });
          break;

        case "left":
          setState(() {
            ghost--;
          });
          break;

        case "down":
          setState(() {
            ghost += numberInRow;
          });
          break;
      }
      if(paused == true || done == true){
        timer.cancel();
        restarted = false;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (!barriers.contains(player + 1)) {
        player += 1;
      }
    });
  }

  void moveUp() {
    setState(() {
      if (!barriers.contains(player - numberInRow)) {
        player -= numberInRow;
      }
    });
  }

  void moveLeft() {
    setState(() {
      if (!barriers.contains(player - 1)) {
        player -= 1;
      }
    });
  }

  void moveDown() {
    setState(() {
      if (!barriers.contains(player + numberInRow)) {
        player += numberInRow;
      }
    });
  }

  void pause() => paused=true;

  Widget showPause_restart(){
    if(paused){
      return Center(
        child: Stack( children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black54,
          ),
          Center(
            child: InkWell(
              onTap: (){setState(() {startGame(); paused = false;});},
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.black54,),
                child: Icon(Icons.play_arrow_outlined, color: Colors.white, size: 120,),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: MediaQuery.of(context).size.width/2-25,
            child: Align(
              child: InkWell(
                onTap: (){setState(() { direction = "right"; gameStarted = false; restarted = true; player = 166; paused = false; start_pause = 'P L A Y';});},
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
                  SizedBox(height: 10,),
                  Text('FOOD COLLECTED: ${allFoodCount - food.length - 1}', style: gameFont,),
                ],)),
              ),
            ),
          ),
        ],),
      );
    }
    if(done == true){
      return InkWell(
        onTap: (){setState(() {direction = "right"; gameStarted = false; restarted = true; player = 166; done = false; start_pause = 'P L A Y';});},
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
                onTap: (){setState(() {});},
                child: Container(
                    color: Colors.white54,
                    padding: EdgeInsets.all(10),
                    width: 350,
                    child: Center(child: Column(children: [
                      SizedBox(height: 20,),
                      Text('CONGRATS!', style: gameFont),
                      SizedBox(height: 30,),
                      SizedBox( width: MediaQuery.of(context).size.width-50,child: Text('YOU`VE COLLECTED ALL THE FOOD!', textAlign: TextAlign.center, style: gameFont)),
                      SizedBox(height: 20,),
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
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(children: [
          Container(
            width: 400,
            child: Column(
              children: [
                SizedBox(height: 70,),
                Container(
                  //color: Colors.green,
                  height: 35,
                  child: GestureDetector(
                    onTap: gameStarted? pause:startGame,
                    child: Text(
                      start_pause,
                      style: gameFontForStart,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      child: GestureDetector(
                        onVerticalDragUpdate: (details) {
                          if (details.delta.dy > 0) {
                            direction = "down";
                          } else if (details.delta.dy < 0) {
                            direction = "up";
                          }
                        },
                        onHorizontalDragUpdate: (details) {
                          if (details.delta.dx > 0) {
                            direction = "right";
                          } else if (details.delta.dx < 0) {
                            direction = "left";
                          }
                        },
                        child: Container(
                          child: GridView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: numberOfSquares,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: numberInRow),
                              itemBuilder: (BuildContext context, int index) {
                                if (player == index) {
                                  if (!mouthClosed) {
                                    return Padding(
                                      padding: EdgeInsets.all(4),
                                      child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.yellow,
                                          )),
                                    );
                                  } else {
                                    if (direction == "right") {
                                      return PacmanDude();
                                    } else if (direction == "up") {
                                      return Transform.rotate(
                                          angle: 3 * pi / 2, child: PacmanDude());
                                    } else if (direction == "left") {
                                      return Transform.rotate(
                                          angle: pi, child: PacmanDude());
                                    } else if (direction == "down") {
                                      return Transform.rotate(
                                          angle: pi / 2, child: PacmanDude());
                                    }
                                  }
                                } else if (ghost == index) {
                                  return Ghost();
                                } else if (barriers.contains(index)) {
                                  return MyBarrier(
                                    innerColor: Colors.blue[800],
                                    outerColor: Colors.blue[900],
                                    //child: Center(child: Text(index.toString(), style: TextStyle(fontSize: 10,color: Colors.white),)),
                                  );
                                } else if (food.contains(index) || !gameStarted) {
                                  return MyPixel(
                                    innerColor: Colors.yellow,
                                    outerColor: Colors.black,
                                    //child: Center(child: Text(index.toString(), style: TextStyle(fontSize: 10,color: Colors.white),)),
                                  );
                                } else {
                                  return MyPixel(
                                    innerColor: Colors.black,
                                    outerColor: Colors.black,
                                    //child: Center(child: Text(index.toString(), style: TextStyle(fontSize: 10,color: Colors.white),)),
                                  );
                                }
                                return null;
                              }),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          showPause_restart(),
        ],
        ),
      ),
    );
  }
}