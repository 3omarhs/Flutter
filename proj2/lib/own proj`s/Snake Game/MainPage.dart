import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static List<int> snakePosition = [45, 65, 85, 105, 125];
  static int plot = 500;
  int numberOfSquares = plot;//760;
  var direction = 'down';
  static var randomNumber = Random();
  int food = randomNumber.nextInt(plot);
  bool paused = false, over = false;
  static List<int> snakePosition2 = [45, 65, 85, 105, 125];

  void generateNewFood(){
    food = randomNumber.nextInt(plot);
  }

  void startGame(){
    snakePosition = snakePosition2;
    const duration = const Duration(milliseconds: 300);
    Timer.periodic(duration, (Timer timer) {
      updateSnake();
      if(gameOver()){
        setState(() {
          timer.cancel();
        });
        if(over == true) {
          setState(() {
            timer.cancel();
            over = false;
            _showGameOverScreeen();
          });
        }
      }
      if(paused == true){
        setState(() {
          paused = false;
          timer.cancel();
          snakePosition2 = snakePosition;
        });
        _showPauseScreeen();
      }
    });
  }

  void updateSnake(){
    setState(() {
      switch(direction){
        case 'down':
          if(snakePosition.last > 740){
            snakePosition.add(snakePosition.last + 20 - 760);
          }
          else{
            snakePosition.add(snakePosition.last + 20);
          }
          break;

        case 'up':
          if(snakePosition.last < 20){
            snakePosition.add(snakePosition.last - 20 + 760);
          }
          else{
            snakePosition.add(snakePosition.last - 20);
          }
          break;

        case 'left':
          if(snakePosition.last % 20 == 0){
            snakePosition.add(snakePosition.last - 1  + 20);
          }
          else{
            snakePosition.add(snakePosition.last - 1);
          }
          break;

        case 'right':
          if(snakePosition.last % 20 == 0){
            snakePosition.add(snakePosition.last + 1  - 20);
          }
          else{
            snakePosition.add(snakePosition.last + 1);
          }
          break;

        default:
      }

      if (snakePosition.last == food){
        generateNewFood();
      }
      else{
        snakePosition.removeAt(0);
      }
    });
  }

  bool gameOver(){
    setState(() {
      snakePosition2 = [45, 65, 85, 105, 125];
    });
    for(int i=0; i<snakePosition.length; i++){
      int count = 0;
      for(int j=0; j<snakePosition.length; j++){
        if(snakePosition[i] == snakePosition[j]){
          count += 1;
          over = true;
        }
        if(count == 2){
          return true;
        }
      }
    }
    return false;
  }

  void _showGameOverScreeen(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('GAME OVER'),
        content: Text('You\`r score: ' + (snakePosition.length).toString()),
        actions: [
          ElevatedButton(
              onPressed: (){
                over = false;
                startGame();
                Navigator.of(context).pop();
              },
              child: Text('Play Again'),
          )
        ],
      );
    });
  }

  void _showPauseScreeen(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: Text('PAUSED'),
        content: Text('Tap continue to return..'),
        actions: [
          ElevatedButton(
            onPressed: (){
              setState(() {
                paused = false;
                startGame();
                Navigator.of(context).pop();
              });
            },
            child: Text('Continue'),
          )
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Expanded(child: GestureDetector(
          onVerticalDragUpdate: (details) {
            if(direction != 'up' && details.delta.dy > 0){
              direction = 'down';
            }
            else if (direction != 'down' && details.delta.dy < 0){
              direction = 'up';
            }
          },
          onHorizontalDragUpdate: (details) {
            if(direction != 'left' && details.delta.dx > 0){
              direction = 'right';
            }
            else if (direction != 'right' && details.delta.dx < 0){
              direction = 'left';
            }
          },
          child: Container(
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: numberOfSquares,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 20),
              itemBuilder: (BuildContext context, int index){
                if(snakePosition.contains(index)){
                  return Center(
                    child: Container(
                      padding: EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }
                if(index == food){
                  return Container(
                    padding: EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(color: Colors.green,),
                    ),
                  );
                }
                else{
                  return Container(
                    padding: EdgeInsets.all(2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(color: Colors.grey[900],),
                    ),
                  );
                }
              }
            ),
          ),
        )),

        Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: startGame,
                child: Text('S t a r t', style: TextStyle(color: Colors.white, fontSize: 20),),
              ),
              IconButton(onPressed: (){setState(() {
                paused = true;
              });},
                  icon: Icon(Icons.pause, color: Colors.white,)
              ),
              Text('@ 3 o m a r . h s', style: TextStyle(color: Colors.white, fontSize: 20),)
            ],
          ),
        ),
      ],),
    );
  }
}
