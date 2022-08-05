import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'button.dart';
import 'pixel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfSquares = 130;
  int playerPosition = 0;
  int bombPosition = -1;
  static List<int> barriers1 = [
    11,
    13,
    15,
    17,
    18,
    31,
    33,
    35,
    37,
    38,
    51,
    53,
    55,
    57,
    58,
    71,
    73,
    75,
    77,
    78,
    91,
    93,
    95,
    97,
    98,
    111,
    113,
    115,
    117,
    118
  ];

  static var random = new Random();
  // List<int> barriers = barriers1[random.nextInt(barriers1.length)] as List<int>;
  List<int> barriers = new List.generate(barriers1.length, (_) => random.nextInt(127)+3);

  static List<int> boxes1 = [
    12,
    14,
    16,
    28,
    21,
    41,
    61,
    81,
    101,
    112,
    114,
    116,
    119,
    127,
    123,
    103,
    83,
    63,
    63,
    65,
    67,
    39,
    19,
    1,
    30,
    50,
    70,
    47,
    121,
    100,
    96,
    79,
    99,
    107,
    7,
    3
  ];

  // List<int> boxes = boxes1[random.nextInt(boxes1.length)] as List<int>;
  // List<int> boxes = List[[_random.nextInt(list.length)];
  List<int> boxes = new List.generate(boxes1.length, (_) => random.nextInt(127)+3);

  void moveUp() {
    setState(() {
      if (playerPosition - 10 >= 0 &&
          !barriers.contains(playerPosition - 10) &&
          !boxes.contains(playerPosition - 10)) {
        playerPosition -= 10;
      }
    });
  }

  void moveLeft() {
    setState(() {
      if (!(playerPosition % 10 == 0) &&
          !barriers.contains(playerPosition - 1) &&
          !boxes.contains(playerPosition - 1)) {
        playerPosition -= 1;
      }
    });
  }

  void moveRight() {
    setState(() {
      if (!(playerPosition % 10 == 9) &&
          !barriers.contains(playerPosition + 1) &&
          !boxes.contains(playerPosition + 1)) {
        playerPosition += 1;
      }
    });
  }

  void moveDown() {
    setState(() {
      if (playerPosition + 10 < numberOfSquares &&
          !barriers.contains(playerPosition + 10) &&
          !boxes.contains(playerPosition + 10)) {
        playerPosition += 10;
      }
    });
  }

  List<int> fire = [-1];

  void placeBomb() {
    setState(() {
      for(int i=3;i<=barriers.length-1;i++){
        for(int j=3;j<=boxes.length-1;j++){
          if(barriers[i] == boxes[j]){
            boxes.removeAt(j);
          }
        }
      }
      bombPosition = playerPosition;
      fire.clear();
      Timer(Duration(milliseconds: 1000), () {
        setState(() {
          fire.add(bombPosition);
          fire.add(bombPosition - 1);
          fire.add(bombPosition + 1);
          fire.add(bombPosition - 10);
          fire.add(bombPosition + 10);
          
        });
        clearFire();
      });
    });
  }

  void _showGameOverScreeen(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('GAME OVER'),
        content: Text('The bomb exploded on you!'),
        actions: [
          ElevatedButton(
            onPressed: (){
              // startGame();
              Navigator.of(context).pop();
            },
            child: Text('Tyr Again'),
          )
        ],
      );
    }
    ,barrierDismissible: false
    );
  }

  void _showSuccessScreeen(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('CONGRATS!'),
        content: Text('YOU WIN THE GAME!'),
        actions: [
          ElevatedButton(
            onPressed: (){
              // startGame();
              Navigator.of(context).pop();
            },
            child: Text('Play Again'),
          )
        ],
      );
    }
        ,barrierDismissible: false
    );
  }

  void clearFire() {
    setState(() {
      Timer(Duration(milliseconds: 500), () {
        setState(() {
          for (int i = 0; i < fire.length; i++) {
            if (boxes.contains(fire[i])) {
              boxes.remove(fire[i]);
            }
            print('boxes left: ${boxes.length}');
            if(boxes.length == 1){
              _showSuccessScreeen();
              setState(() {
                random = new Random();
                playerPosition = 0;
                int bombPosition = -1;
                barriers = new List.generate(barriers1.length, (_) => random.nextInt(127)+3);
                boxes = new List.generate(boxes1.length, (_) => random.nextInt(127)+3);
              });
            }

            if (playerPosition == fire[i]) {
              _showGameOverScreeen();
              setState(() {
                random = new Random();
                playerPosition = 0;
                int bombPosition = -1;
                barriers = new List.generate(barriers1.length, (_) => random.nextInt(127)+2);
                boxes = new List.generate(boxes1.length, (_) => random.nextInt(127)+2);
              });
            }
          }
          fire.clear();
          bombPosition = -1;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: numberOfSquares,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 10),
                  itemBuilder: (BuildContext context, int index) {
                    if (fire.contains(index)) {
                      return MyPixel(
                        innerColor: Colors.red,
                        outerColor: Colors.red[900],
                      );
                    } else if (bombPosition == index) {
                      return MyPixel(
                        innerColor: Colors.green,
                        outerColor: Colors.green[800],
                        child: Image.asset('lib/images/pokeball.png'),
                      );
                    } else if (playerPosition == index) {
                      return MyPixel(
                        innerColor: Colors.green,
                        outerColor: Colors.green[800],
                        child: Image.asset('lib/images/bomberman.png'),
                      );
                    } else if (barriers.contains(index)) {
                      return MyPixel(
                        innerColor: Colors.black,
                        outerColor: Colors.black,
                      );
                    } else if (boxes.contains(index)) {
                      return MyPixel(
                        innerColor: Colors.brown,
                        outerColor: Colors.brown[800],
                      );
                    } else {
                      return MyPixel(
                         innerColor: Colors.green,
                         outerColor: Colors.green[800],);
                    }
                  }),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(),
                      MyButton(
                        function: moveUp,
                        color: Colors.grey,
                        child: Icon(
                          Icons.arrow_drop_up,
                          size: 70,
                        ),
                      ),
                      MyButton(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        function: moveLeft,
                        color: Colors.grey,
                        child: Icon(
                          Icons.arrow_left,
                          size: 70,
                        ),
                      ),
                      MyButton(
                        function: placeBomb,
                        color: Colors.grey[900],
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'lib/images/pokeball.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      MyButton(
                        function: moveRight,
                        color: Colors.grey,
                        child: Icon(
                          Icons.arrow_right,
                          size: 70,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(),
                      MyButton(
                        function: moveDown,
                        color: Colors.grey,
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 70,
                        ),
                      ),
                      MyButton(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
