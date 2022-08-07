import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pass_generator/main.dart';
import 'package:weather/weather.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';

class my_Class extends StatefulWidget {
  my_Class({Key? key}) : super(key: key);
  static String date = DateTime.now().day.toString() + "/" + DateTime.now().month.toString();
  static String time = DateTime.now().hour.toString() + ":" + DateTime.now().minute.toString();
  static String pass = MyHomePageState().value2("").toString();

  static String Weekday(String str){
    int day = DateTime.now().weekday;
    if(day == 7){
      str = "Sa";
    }
    else if(day == 0){
      str = "Su";
    }
    else if(day == 1){
      str = "Mo";
    }
    else if(day == 2){
      str = "Tu";
    }
    else if(day == 3){
      str = "We";
    }
    else if(day == 4){
      str = "Th";
    }
    else if(day == 5){
      str = "Fr";
    }
    return str;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton(color: Colors.black, onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_){return MyHomePage(title: "title");}));}), title: Text("...."), centerTitle: true,),
      body: Center(
        child: Stack(children: [
          DoubleBackToCloseApp(
            child: MyHomePage(),
            snackBar: const SnackBar(
              content: Text('Tap back again to leave'),
            ),
          ),
          Container(
              alignment: Alignment.center,
              height: double.infinity,
              // mainAxisAlignment: MainAxisAlignment.start,
              child: Expanded(
                  child: Image.asset("images/1.jpg",fit: BoxFit.cover,height: double.infinity,)
              )
          ),
          // Container(width: double.infinity, height: 250, color: Colors.black,),
          // Expanded(child: Container(width: double.infinity, height: 200, color: Colors.red,), flex: 3,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(width: double.infinity, height: 220, color: Colors.black,),
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 20),
                      child: Stack(
                        children: [
                          Container(width: 180, height: 60, color: Colors.grey,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(my_Class.pass, style: TextStyle(color: Colors.white, fontSize: 26),),
                                        Text("stp:0", style: TextStyle(color: Colors.white, fontSize: 26),),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 10,),

                                  Container(
                                    child: Column(
                                      children: [
                                        Text("22.4°", style: TextStyle(color: Colors.white, fontSize: 12),),
                                        SizedBox(height: 15,),
                                        Text(my_Class.Weekday(""), style: TextStyle(color: Colors.white, fontSize: 26),),
                                      ],
                                    ),
                                  ),

                                  // SizedBox(width: 5,),

                                  Container(
                                    child: Column(
                                      children: [
                                        Text(my_Class.date, style: TextStyle(color: Colors.white, fontSize: 26),),
                                        Text(my_Class.time, style: TextStyle(color: Colors.white, fontSize: 26),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),),
                  ],
                ),

                /*child: Padding(
                  padding: const EdgeInsets.only(top: 95, left: 20),
                  child: Stack(
                    children: [
                      Container(width: 180, height: 80, color: Colors.grey,),
                      Text("data", style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),*/
              ),
            ],
            /*child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 95.0, left: 20),
                child: Stack(children: [ Container(width: 180, height: 80, color: Colors.grey,),

                  Text("data", style: TextStyle(color: Colors.white),)
                ])
              ),
            ),*/
          ),
        ],
        ),
      ),
    );
  }
}
