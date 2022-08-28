import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info.dart';


void main() {
  runApp(MyApp());
}

Color w = Colors.white;
Color b = Colors.black;


class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: MyHomePage() //title: '3omar.hs')
    );
  }

}


/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}*/

// class _MyHomePageState extends State<MyHomePage> {
class MyHomePage extends StatelessWidget {

  final List<Info> li = [
    Info(name: "Omar", height: 187, date: DateTime.now()),
    Info(name: "Ali", height: 192, date: DateTime.now()),
    Info(name: "Sara", height: 197, date: DateTime.now()),
    Info(name: "Mohammed", height: 182, date: DateTime.now()),
    Info(name: "Maha", height: 177, date: DateTime.now()),
    Info(name: "Hala", height: 185, date: DateTime.now()),
    Info(name: "Adam", height: 190, date: DateTime.now()),
    Info(name: "Asma", height: 195, date: DateTime.now()),
    Info(name: "Ahmed", height: 180, date: DateTime.now()),
    Info(name: "Masoud", height: 175, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3omar.hs Flutter App", style: TextStyle(color: b),),
      ),
      body: Container(
        width: double.infinity,
        color: b,
        child: ListView.builder(
          itemCount: li.length,
          itemBuilder: (ctx, idx){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.all(10),
                color: Colors.deepOrange,
                shadowColor: Colors.yellow,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(li[idx].name, style: TextStyle(color: w, fontSize: 35),),
                        Text("${li[idx].height}", style: TextStyle(color: w, fontSize: 30),)
                      ],
                    ),
                    Text("${li[idx].date}", style: TextStyle(color: w, fontSize: 25),)
                  ],),
                ),
              ),
            );
          },

          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // children: [
          //   Container(
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text("Text 4",style: TextStyle(color: w, fontSize: 20),),
          //         Text("Text 5",style: TextStyle(color: w, fontSize: 20),),
          //         Text("Text 6",style: TextStyle(color: w, fontSize: 20),),
          //       ],
          //     ),
          //   ),
          //   Text("Text 1",style: TextStyle(color: w, fontSize: 20),),
          //   Text("Text 2",style: TextStyle(color: w, fontSize: 20),),
          //   Text("Text 3",style: TextStyle(color: w, fontSize: 20),),
          // ],
        ),
      ),
    );
  }
}
