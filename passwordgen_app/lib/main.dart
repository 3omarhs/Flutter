import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pass_generator/screen1.dart';

import 'package:double_back_to_close_app/double_back_to_close_app.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var initializationSettingsAndroid = AndroidInitializationSettings('codex_logo');
  var initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {}
  );
  var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  /*await flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: (String? payload) async{
    if(payload != null){
      debugPrint('notification payload: ' + payload);
    }
  });*/

  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue,
    statusBarColor: Color(0xff2403a4),
    // statusBarBrightness: Brightness.light,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pass_Generator',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Box Password Generator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title = "3omar.hs"}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  static var random_color = [Colors.blue, Colors.red, Colors.green, Colors.purple, Colors.yellow, Colors.pink, Colors.orange, Colors.brown, Colors.teal, Colors.amber, Colors.grey, Colors.indigo, Colors.cyan, Colors.lime];
  static var random_int = new Random();
  var my_color = random_color[random_int.nextInt(random_color.length)];
  var my_color_0 = random_color[random_int.nextInt(random_color.length)];
  var my_color_10 = random_color[random_int.nextInt(random_color.length)];
  var this_min = DateTime.now().minute;
  //var val = DateTime.now().minute.toString();
  String value1(var val){
    var hou = DateTime.now().hour;
    if(DateTime.now().hour > 12)
      hou = DateTime.now().hour - 12;
    return val = "3" + DateTime.now().minute.toString().substring(DateTime.now().minute.toString().length - 1, DateTime.now().minute.toString().length) + (DateTime.now().weekday + 1).toString() + hou.toString().substring(hou.toString().length - 1, hou.toString().length) + DateTime.now().day.toString().substring(DateTime.now().day.toString().length - 1, DateTime.now().day.toString().length);
//(3 LM WD LH LDN) 3                                                      last digit in miniutes                                                                      week day                                            last digit in hours                                                                    last digit in day number
//(3 LM+3 WD-3 LH LDN-3) >>> if < or > original >>> = 3
  }

  int Index(num){
    var index = [int.parse(value1("val")[0]),
      int.parse(value1("val")[1]),
      int.parse(value1("val")[2]),
      int.parse(value1("val")[3]),
      int.parse(value1("val")[4])];
    /*if(index[1] >= 4){
      index[1] = index[1] + 4;
    }*/
    var index_edited_1 = [index[0],
      index[1] + 3,
      index[2] - 3,
      index[3],
      index[4] - 3];
    var index_edited_2 = [];
    for(int i=0; i<=index_edited_1.length-1; i++){
      if((index_edited_1[i] != 0)&&(index_edited_1[i] != 1)&&(index_edited_1[i] != 2)&&(index_edited_1[i] != 3)&&(index_edited_1[i] != 4)&&(index_edited_1[i] != 5)&&(index_edited_1[i] != 6)&&(index_edited_1[i] != 7)&&(index_edited_1[i] != 8)&&(index_edited_1[i] != 9)){
        index_edited_2.add(3);
      }
      else{
        index_edited_2.add(index_edited_1[i]);
      }
    }
    return index_edited_2[num];
  }

  String value2(var val){
    var val2 = "3";
    val2 += Index(1).toString().substring(Index(1).toString().length-1, Index(1).toString().length);
    val2 += Index(2).toString().substring(Index(2).toString().length-1, Index(2).toString().length);
    val2 += Index(3).toString().substring(Index(2).toString().length-1, Index(2).toString().length);
    val2 += Index(4).toString().substring(Index(2).toString().length-1, Index(2).toString().length);
    return val2;
  }

  Timer? timer;
  var time;
  void initState() {
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      value2("");
      if(this_min + 1 == DateTime.now().minute){
        my_color = random_color[random_int.nextInt(random_color.length)];
        my_color_0 = random_color[random_int.nextInt(random_color.length)];
        this_min = DateTime.now().minute;
      }
      setState(() {
      });
      //mytimer.cancel() //to terminate this timer
    });
    super.initState();
  }
  // var val = "3" + DateTime.now().minute.toString().substring(DateTime.now().minute.toString().length - 1, DateTime.now().minute.toString().length) + (DateTime.now().weekday + 1).toString() + DateTime.now().hour.toString().substring(DateTime.now().hour.toString().length - 1, DateTime.now().hour.toString().length) + DateTime.now().day.toString().substring(DateTime.now().day.toString().length - 1, DateTime.now().day.toString().length);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.lightBlueAccent, title: Text("Password Generator App", style: TextStyle(color: Colors.black), ),centerTitle: true,),
        body: Center(
            child: Stack(
              children: [
                /*DoubleBackToCloseApp(
                  child: MyHomePage(),
                  snackBar: const SnackBar(
                    content: Text('Tap back again to leave'),
                  ),
                ),*/
                Stack(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        child: Expanded(
                            child: Image.asset("images/2.jpg",fit: BoxFit.cover,height: double.infinity,)
                        )
                    ),
                    Container(
                      child: Column(
                        children: [

                          SizedBox(height: 100,),

                          Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(children: <Widget>[ Text(value1(""), style: TextStyle(backgroundColor: my_color, fontSize: 70,foreground: Paint() ..style = PaintingStyle.stroke ..strokeWidth = 5 ..color = my_color_10,),), Text(value1(""), style: TextStyle(color: Colors.white, fontSize: 70,),)]),
                            ),
                          ),

                          SizedBox(height: 100,),

                          Container(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              // child: Text(value2(""), style: TextStyle(color: Colors.white, backgroundColor: my_color_0, fontSize: 70),),
                              child: Stack(children: <Widget>[ Text(value2(""), style: TextStyle(backgroundColor: my_color_0, fontSize: 70,foreground: Paint() ..style = PaintingStyle.stroke ..strokeWidth = 5 ..color = my_color_10,),), Text(value2(""), style: TextStyle(color: Colors.white, fontSize: 70,),)]),
                            ),
                          ),

                          SizedBox(height: 100,),

                          Container(
                            child: TextButton.icon(
                              icon: Icon(Icons.refresh),
                              onPressed: (){setState(() {value1(""); my_color_10 = random_color[random_int.nextInt(random_color.length)];});},
                              label: Text("Refresh"),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: my_color_10,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),


                          Container(
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pushReplacement(MaterialPageRoute(
                                    builder: (_){
                                      return Screen1();
                                    }
                                ));
                              },
                              child: Text("....."),
                              style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                    // Expanded(
                    //   child: new Image(
                    //     image: AssetImage('images/2.jpg'),
                    //     fit: BoxFit.cover,
                    //     height: double.infinity,
                    //     width: double.infinity,
                    //     alignment: Alignment.center,
                    //   ),
                    // ),
                  ],
                ),
              ]
          ),
        )
    );
  }
}
