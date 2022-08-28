import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // final double h50 = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("nnn"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.amber]   //put at first the begin color then the end color.
              )
            ),
          ),
        ),
        /*appBar: AppBar(
          title: Container(decoration: BoxDecoration(
        // color: Colors.orange,
        gradient: LinearGradient(
        begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.amber]   //put at first the begin color then the end color.
              ),
            ),
          ),
        ),*/
        body: Container(   //(نفس حجم الصفحة)
          // color: Colors.deepPurple,
          child: Center(child: Text("Container")),
          width: double.infinity,
          height: 300,  //h50
          margin: EdgeInsets.zero,
          decoration: BoxDecoration(
            // color: Colors.orange,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.pink]   //put at first the begin color then the end color.
              ),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(10)
              ),
              shape: BoxShape.rectangle
          ),
        ),
      ),
    );
  }
}
