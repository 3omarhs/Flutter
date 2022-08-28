import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'developper_page.dart';
import 'regions.dart';
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
          scaffoldBackgroundColor: Colors.green[100]
      ),
      home: MyHomePage(title: 'Bus tours by regions..'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key,this.title = ""}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String page_name = "";
  Widget getItemContainer(String item) {
    return Container(
      width: 5.0,
      height: 5.0,
      alignment: Alignment.center,
      child: Text(
        item,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.blue,
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      height: 150,
      width: 300,
      color: Colors.blue,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.red,
              Colors.blue,
            ],
          )
      ),
      /*decoration: BoxDecoration(
          color: Colors.greenAccent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),*/
      // margin: EdgeInsets.all(10),
      // padding: EdgeInsets.all(10),
      // child: child
    );
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
                child: Text('Menu:'),
              ),
              ListTile(
                title: const Text('Main Screen'),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.of(context).pushReplacement(Regions(title: "title"));
                  /*Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_){
                      return Regions(title: "Amman");
                    }
                ));*/
                },
              ),
              Divider(),
              Text("Provinces: ", textAlign: TextAlign.center,),

              ListTile(
                title: const Text('Amman'),
                onTap: () {
                  // Navigator.of(context).pushReplacement(Regions(title: "title"));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Regions(title: "Amman")));
                },
              ),
              ListTile(
                title: const Text('Sahab'),
                onTap: () {
                  // Navigator.of(context).pushReplacement(Regions(title: "title"));
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Regions(title: "Sahab")));
                },
              ),
              ListTile(
                title: const Text('Zarqa'),
                onTap: () {
                  // Navigator.of(context).pushReplacement(Regions(title: "title"));
                  /*Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (_){
                      return Regions(title: "Zarqa");
                    }
                ));*/
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Regions(title: "Zarqa")));
                },
              ),
              ListTile(
                title: const Text('Madaba'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Regions(title: "Madaba")));
                },
              ),
              ListTile(
                title: const Text('Salt'),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Regions(title: "Salt")));
                },
              ),
              Divider(),
              ListTile(
                title: const Text('Developper Page'),
                onTap: () {
                  // Update the state of the app.
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Developper_Page(title: "")));
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: GridView.builder(
            itemCount: my_regions.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return new Card(
                child: new InkResponse(
                  child: Center(child: Stack(children: [ Text(my_regions[index], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),), Text(my_regions[index], style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300, color: Colors.black),)],)),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Regions(title: my_regions[index])));
                  },
                ),
              );
            }
        )

      /*buildContainer(
              Widget build(
                itemBuilder: (cts, index) =>
                    Card(
                        color: Theme
                            .of(context)
                            .accentColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(my_regions[index]),
                        )
                    ),
                itemCount: my_regions.length,
              ),
        )
*/
      /*body:GestureDetector(
        child: GridView.builder(
          itemCount: 4,
          // SliverGridDelegateWithFixedCrossAxisCount ينشئ عددًا ثابتًا من عناصر واجهة التعامل على المحور الأفقي
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // عدد عناصر المحور الأفقي
            crossAxisCount: 2,
            // تباعد المحور الرأسي
            mainAxisSpacing: 20.0,
            // تباعد المحور الأفقي
            crossAxisSpacing: 10.0,
            // نسبة عرض وارتفاع وطول المكونات الفرعية
            childAspectRatio: 1.0
          ), itemBuilder: (BuildContext context, int index) {
            //Widget Function(BuildContext context, int index)
            return getItemContainer(my_regions[index]);
            page_name = my_regions[index];
          }
        ),
        onTap: () {},
      ),*/
    );
  }
}
