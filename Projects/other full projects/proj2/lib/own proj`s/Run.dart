import 'package:flutter/material.dart';
import 'package:proj2/College/for_exam/chkPage.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.purple[200],
            brightness: Brightness.light, // app color mode dark/light.
            primarySwatch: Colors.purple, // collor of all the appbars in the app.
            textTheme: TextTheme(
              bodyText1: TextStyle(
                color: Colors.purpleAccent, // the default color of the appbar in all pages of this project.
              ),
              bodyText2: TextStyle(
                  color: Colors.deepPurple  // color of text`s
              ),
            )
        ),
        home:
        // chkPage()
        ThisHome()
    );
  }
}
