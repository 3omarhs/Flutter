import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'busses_places.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZUJ Busses',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Bus tours by regions..'),
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
  var last_rand_col;
  static var random_color = [Colors.greenAccent, Colors.lightGreen, Colors.lightGreenAccent, Colors.yellow, Colors.yellowAccent];
  static var random_int = new Random();
  Color my_color(int x){
    var y = random_int.nextInt(random_color.length-1);
    if(y != last_rand_col){
      last_rand_col = y;
      return random_color[y];
    }
    else{
      if(y != random_color.length){
        last_rand_col = y;
        return random_color[y+1];
      }
      else{
        last_rand_col = y;
        return random_color[y-1];
      }
    }
  }

  var index = 0;

  var _url = 'https://flutter.dev';
  void _launchURL(var place_link) async {
    await canLaunch(place_link) ? await launch(place_link) : throw 'Could not launch $place_link';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF145A32),
              ),
              child: Text('Side Menu:'),
            ),
            ListTile(
              title: const Text('Main Screen'),
              onTap: () {
                Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
              },
            ),
            ListTile(
              title: const Text('....'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              for(int i=0; i<=my_list.keys.length-1; i++)Container(
                width: double.infinity,
                color: my_color(i),
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: TextButton.icon(
                        onPressed: (){_launchURL(my_list.values.elementAt(i));},
                        style: ButtonStyle(alignment: Alignment.centerRight),
                        label: Text(my_list.keys.elementAt(i), style: TextStyle(fontSize: 30, color: Colors.black), textDirection: TextDirection.rtl, textAlign: TextAlign.right,),
                        icon: Icon(Icons.link, color: Colors.red, size: 45,),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
