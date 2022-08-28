import 'package:flutter/material.dart';
import 'package:my_project_8/screen1.dart';
import 'package:my_project_8/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/x1': (context) => screen1(),
        '/x2': (context) => screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  void selectScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed( //MaterialPageRoute(
      // builder: (_){
      //   if(n == 2)
      //     return screen2();
      //   return screen1();
        n == 1 ? '/x1':'/x2',  //screen1.routeName
      arguments: {
          'id': n==1? 10:20,
          'title': n==1? "info1":"info2",
      }
    );
  }


@override
Widget build(BuildContext context) {

    //var routeArg = ModalRoute.of(context).settings.arguments as Map<String, Object>;

  return Scaffold(
    appBar: AppBar(
      title: Text("Main Screen"),
    ),
    body: Container(
      // child: Column(
      //   children: [
      //     Text("${routeArg['id']}", style: TextStyle(fontSize: 30),),
      //     Text("${routeArg['title']}", style: TextStyle(fontSize: 30),)
      //     // InkWell(
      //     //   child: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
      //     //   onTap: () => selectScreen(context, 1),
      //     // ),
      //     //
      //     // InkWell(
      //     //   child: Text("Go to screen 2", style: TextStyle(fontSize: 35),),
      //     //   onTap: () => selectScreen(context, 2),
      //     // ),
      //   ],
      // ),
    ),
    drawer: Drawer(
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),

          ListTile(
            title: Text("Go to screen 2", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 2"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 2),
          ),
        ],
      ),
    ),
    drawerScrimColor: Colors.pinkAccent . withOpacity(0.5),
    endDrawer: Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
          ListTile(
            title: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
            subtitle: Text("choise 1"),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => selectScreen(context, 1),
          ),
        ]
      ),
    ),
  );
}}
