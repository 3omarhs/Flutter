import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'info.dart';
import 'package:intl/intl.dart';


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
          primarySwatch: Colors.green,
          accentColor: Colors.pinkAccent

        ),
        home: MyHomePage()
    );
  }

}

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

  void x(BuildContext cot){
    showModalBottomSheet(context: cot, builder: (_){
      return ListView.builder(
        itemCount: li.length,
        itemBuilder: (_, idx){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: EdgeInsets.all(10),
              color: Theme.of(cot).primaryColor,
              shadowColor: Colors.yellow,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(li[idx].name, style: TextStyle(color: w, fontSize: 35, fontFamily: 'OpenSans',),),
                      Text("${li[idx].height}", style: TextStyle(color: w, fontSize: 30, ),)
                    ],
                  ),
                  Text("${DateFormat('MMM.dd').format(li[idx].date)}", style: TextStyle(color: w, fontSize: 25),) //
                ],),
              ),
            ),
          );
        },
      );
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3omar.hs Flutter App", style: TextStyle(color: b),),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: b,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network("https://scontent.famm9-1.fna.fbcdn.net/v/t1.6435-9/125484624_162817495517905_139797693999845828_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeFcOqKE_hPVFkE8ZHnDgHHJvVEo5R2RfF29USjlHZF8XUYFg6f5Q0v1qPokM63lNDmaYuKeKw6xnSQ190LJQgvB&_nc_ohc=qTbvqrFcwxAAX_089xT&_nc_ht=scontent.famm9-1.fna&oh=3b25ec7a8d9c91cfde91a7ea86f39771&oe=6164E9C0", fit: BoxFit.cover),
              Image.asset("images/11.jpg"),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=> x(context),
      ),
    );
  }
}
