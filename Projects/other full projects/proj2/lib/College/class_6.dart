import 'package:flutter/material.dart';


//Commonly used outline button..
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        home:MyHomePage()
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(),
            // Raised Button
            Row(
              children: [Text("Raised Button"),
                RaisedButton(onPressed: (){} ,child: Text("Raised Button"), textColor: Colors.black, disabledColor: Colors.green,),
              ],
            ),
            verticalSpace(),
            // Raised Button with icon
            Row(
              children: [
                Text("Raised Button with icon"),
                RaisedButton.icon(onPressed: (){} ,icon:Icon(Icons.favorite, color: Colors.red), label: Text("Raised Button with Icon"), textColor: Colors.black, disabledColor: Colors.green, color: Colors.blueAccent,),

              ],

            ),
            verticalSpace(),
            // Flat Button
            Row(
              children: [
                Text("Flat Button"),
                FlatButton(onPressed: (){}, child: Text("Flat Button"), textColor: Colors.blue, disabledColor: Colors.grey,),

              ],

            ),
            verticalSpace(),
            // Flat Button with Icon
            Row(
              children: [
                Text("Flat Button with Icon"),
                FlatButton.icon(onPressed: (){},icon: Icon(Icons.add), label: Text("Add"), textColor: Colors.blue, disabledColor: Colors.grey,),

              ],

            ),
            verticalSpace(),
            //Outlined Button
            Row(
              children: [
                Text("Flat Button"),
                OutlineButton(onPressed: (){}, child: Text("Outlined Button"), textColor: Colors.blue,),

              ],

            ),
            verticalSpace(),
            // Outlined Button with Icon
            Row(
              children: [
                Text("Flat Button with Icon"),
                OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("Add"), textColor: Colors.blue,),

              ],

            ),
            verticalSpace(),
            //Elevated  Button
            Row(
              children: [
                Text("Elevated Button"),
                ElevatedButton(onPressed: (){}, child: Text("Elevated Icon Button"), style: ButtonStyle(shape: MaterialStateProperty.all(CircleBorder())),),

              ],

            ),
            verticalSpace(),
            //Elevated  Button with icon
            Row(
              children: [
                Text("Elevated Button"),
                ElevatedButton.icon(onPressed: (){}, label: Text("Elevated Icon Button"), icon:Icon(Icons.notifications),),

              ],

            ),
            verticalSpace(),
            //Text  Button
            Row(
              children: [
                Text("Text Button"),
                TextButton(onPressed: (){}, child: Text("Text Button"),),

              ],

            ),
            verticalSpace(),
            //Text  Button with icon
            Row(
              children: [
                Text("Text Button with Icon"),
                TextButton.icon(onPressed: (){}, label: Text("Text Button with Icon"), icon:Icon(Icons.notifications),),
              ],

            ),

            verticalSpace(),
            //Icon Button
            Row(
              children: [
                Text("Icon Button"),
                IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color: Colors.green, hoverColor : Colors.orange,),
              ],

            ),
            verticalSpace(),
            Row(
              children: [
                Text("Icon Button"),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.menu),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue), // <-- Button color
                  ),
                ),
              ],

            ),


          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.ac_unit), onPressed: (){},),
    );
  }
  Widget verticalSpace() {
    return const SizedBox(
      height: 20,
    );
  }
}

