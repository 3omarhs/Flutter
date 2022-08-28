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
  void moveBasket(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(children: [
          Padding(
            padding: EdgeInsets.all(109),
            child: Slider(value: _SliderVal, onChanged: (double val){setState(() {
              _SliderVal = val;
              basketVal = val;
            });}, min: 1, max: 5,),
          ),

        ],),
        Center(child: Text(basketVal.toString(), style: TextStyle(fontSize: 40),))
      ],),
    );
  }
}
