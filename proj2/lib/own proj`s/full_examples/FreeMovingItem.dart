import 'package:flutter/material.dart';


void main(){
  runApp(app());
}

class app extends StatelessWidget {
  const app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double basketVal = 0;
  double _SliderVal = 3;
  Offset position = Offset(100, 100);
  double x = 0, y = 0;
  double scale = 1;

  void updatePosition(Offset newPosition) => setState(() => position = newPosition);
  void moveBasket(){

  }


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          height: 150,
          width: 500,
          child:Stack(
            children: [
              Positioned(
                left: position.dx,
                // top: position.dy,
                child: Draggable(
                  axis: Axis.horizontal,
                  feedback: Image.asset('lib/own proj`s/Eggs Game/Images/basket.png', width: 150,height: 150,),
                  childWhenDragging: Opacity(
                    opacity: 0,
                    child: Image.asset('lib/own proj`s/Eggs Game/Images/basket.png', width: 150,height: 150,),
                  ),
                  onDragEnd: (details) => setState(() => position = details.offset),
                  child: Image.asset('lib/own proj`s/Eggs Game/Images/basket.png', width: 150,height: 150,),
                ),
              )
            ],
          )
      )
    ],);
  }
}