import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedPageIndex = 0;
  void _x1(int index){
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Main Screen'),
          ),
        body: null,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor : Colors .pinkAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors. white,
          currentIndex :_selectedPageIndex,
          selectedFontSize : 15,
          unselectedFontSize: 15,
          type: BottomNavigationBarType. shifting,
          onTap:_x1,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("Screen 1"),),
            BottomNavigationBarItem(icon: Icon(Icons.star), title: Text("Screen 2"),)
          ],
        ),
      )
    );
  }
}
