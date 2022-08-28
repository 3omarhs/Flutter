import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:_MyApp()
    );
  }
}

class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);

  @override
  State<_MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<_MyApp> {
  String txt = "Flutter";
  int x = 0;

  changeText(String value){
    setState(() {
      txt = value;
    });
  }

  changeText1(String value){
    setState(() {
      if(x%2==0)
        txt = "hi";
      else
        txt = value;
    });
  }


  Color c = Colors.blue;
  String AppTxt = "Blue";
  String BodyText = "Light";
  onChanged(){
    setState(() {
      if(c == Colors.blue) {
        c = Colors.black;
        AppTxt = "White";
        BodyText = "Dark";
      }
      else {
        c = Colors.blue;
        AppTxt = "Blue";
        BodyText = "Light";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTxt),
        backgroundColor: c,
      ),
      // body: Text(txt, style: TextStyle(fontSize: 50),),
      body: Text(BodyText),
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){changeText1("Clicked"); x++;},
      ),*/
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: onChanged,
      ),
    );
  }
}
