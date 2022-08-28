import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.light,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.green)),

      ),
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.red,
            /**
             * Colors:
             * Colors.red
             * Colors.red[50]
             * Colors.fromARGB(255,255,255,255)
             * Colors.RGBO(255,255,255,1)
             * Color(0xFFFFFFFF) **on the sequence:ARGB
             * Color.red.withOpacity(0.0)
             * Color.red.withBlue
             * Color.red.Shade500
             */
          leading: Icon(Icons.arrow_back),
          title: Text("Flutter Body Text",
            style: TextStyle(
              color: Colors.blue,
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 3,
              decoration: TextDecoration.lineThrough,  //اضافة خط الي النص اما فوقه او تحته او من خلاله او بدون خط..
              decorationColor: Colors.yellow,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy,  //dashed or dotted or wavy or double.
            ),),
          titleSpacing: 30,
          actions: [
            Icon(Icons.email),
            Icon(Icons.notifications),
          ],
        ),
        body: Text("Flutter Subject"),
      ),
    );
  }
}
