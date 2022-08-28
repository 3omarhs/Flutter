import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //3 contents (debugShowChecked.., theme, home).
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light, // app color mode dark/light.
        primarySwatch: Colors.purple, // collor of all the appbars in the app.
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.blue, // the default color of the appbar in all pages of this project.
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: Colors.deepPurple
          ),
        )
      ),
      home: Scaffold(
        appBar: AppBar( // contain these main things: leading(icon in the left of the screen), title(text), centerTitle(boolean), titleSpacing(double number), action(is a list of widgets).
          title: Text("Title"),
          backgroundColor: Colors.teal, // color of the appbar of this page only.
          // centerTitle: true,
          titleSpacing: 30,
          // leading: Icon(Icons.arrow_back),
          actions: [
            Icon(Icons.accessibility_new_rounded),
            Icon(Icons.ac_unit),
            Icon(Icons.account_balance_wallet),
          ],
        ),
        body: Center(
          child: Text("body..")
        ),
      ),
    );
  }
}
