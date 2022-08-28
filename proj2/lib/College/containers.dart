// 3`ed lesson:
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Containers"),
        ),
        body: Container(   //(نفس حجم الصفحة)
          // color: Colors.deepPurple,
          child: Center(child: Text("Text Container")),
          // width: 100,
          // width: double.infinity >>> يأخذ نفس مساحة الاب
          width: double.infinity,
          height: double.infinity,
          // margin: EdgeInsets.symmetric(vertical: 30, horizontal: 5),   //بعد حافة الشكل عن طرف الاب
          margin: EdgeInsets.zero,
          // margin: EdgeInsets.all(10),
          // margin: EdgeInsets.only(
          //   top: 10,
          //   right: 5,
          //   left: 30
          // ),
          padding: EdgeInsets.only(   // بعد مضمون الشكل عن طرفه
            top: 10,
            left: 20
          ), //or to make it in center clear the padding and cover the text inside child with center.
          decoration: BoxDecoration(
            // color: Colors.orange,
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.red, Colors.amber]   //put at first the begin color then the end color.
            ),
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10)
            ),
            // or:
            // borderRadius: BorderRadius.only(
            //     bottomLeft: Radius.circular(10)
            // )
            // shape: BoxShape.circle  //but you have to clear borderRadius first.
              shape: BoxShape.rectangle
          ),
        ),
      ),
    );
  }
}
