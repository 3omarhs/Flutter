import 'package:flutter/material.dart';
import 'package:proj2/College/for_exam/Widgets/GridViewItems/CardControl.dart';
import 'package:proj2/College/for_exam/Widgets/GridViewItems/CardData.dart';
import 'package:proj2/College/for_exam/Widgets/ListViewControl/ListCard.dart';
import 'package:proj2/College/for_exam/Widgets/ListViewControl/ListData.dart';

//width_get:// MediaQuery.of(context).size.width

//scroll_direction:// SingleChildScrollView(scrollDirection: Axis.vertical, physics: NeverScrollableScrollPhysics(), child: Text("mmmmmmmmmmmmmmmmmm")),

//multi_pages:// Navigator.push(context, MaterialPageRoute(builder: (context) => const MyPage()),);
//return_to_home_page:// Navigator.pop(context);

//validation://
// GlobalKey<FormState> formKey = GlobalKey<FormState>();
// Form(key: formKey,
// onPressed: (){if (formKey.currentState!.validate()){Navigator.pop(context);} }
// onPressed: (){if (formKey.currentState!.validate()){Navigator.pop(context);} }

//checkBox:// bool _value=false;
// CheckBx(title: "Min", value: _value , onchanged: (value) {setState(() {_value = value;});}

// pages parameter passing:{
////on the first page:
////onClick(){  Navigator.push(context, MaterialPageRoute(builder: (context) => Page2(no1 : no1, no2 : no2, op : op, result : result,)));  }
//
//on the second page:
//inside: class Page2 extends StatefulWidget{.. type:
//   final int no1;
//   final int no2;
//   final String op;
//   final int result;
//   const Page2({Key? key, required this.no1, required this.no2, required this.result, required this.op}) : super(key: key);
// }


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, // app color mode dark/light.
          primarySwatch: Colors.purple, // collor of all the appbars in the app.
          textTheme: TextTheme(
            bodyText1: TextStyle(
              color: Colors.blue, // the default color of the appbar in all pages of this project.
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            bodyText2: TextStyle(
                color: Colors.deepPurple  // color of text`s
            ),
          )
      ),
      home: text_and_color(),
    );
  }
}

class text_and_color extends StatefulWidget {
  const text_and_color({Key? key}) : super(key: key);

  @override
  State<text_and_color> createState() => _text_and_colorState();
}

class _text_and_colorState extends State<text_and_color> {

  Color c = Colors.blue;
  String AppTxt = "Blue";
  String BodyText = "Light";
  onChanged(){
    setState(() {
      if(c == Colors.blue) {
        c = Colors.black;
        AppTxt = "White";
        BodyText = "Dark";
      }
      else {
        c = Colors.blue;
        AppTxt = "Blue";
        BodyText = "Light";
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Flutter Title Text"),
        backgroundColor: c,
        titleSpacing: 30,
        actions: [
          Icon(Icons.email),
          Icon(Icons.notifications),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [


          // CardControl(choice: CardData(title: "title", icon: Icons.category)),
          // ListCard(item: Item(name: "omar", color: "grey", image: "assets/p3.jpg", id: "000111222", price: 20, desc: "item")),


          // Text`s:
          Text(BodyText,
            style: TextStyle(
              color: Colors.blue,
              backgroundColor: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 3,
              decoration: TextDecoration.lineThrough,  //اضافة خط الي النص اما فوقه او تحته او من خلاله او بدون خط..
              decorationColor: Colors.yellow,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.wavy,  //dashed or dotted or wavy or double.
            ),),

          /**
           * Colors:
           * Colors.red
           * Colors.red[50]
           * Colors.fromARGB(255,255,255,255)
           * Colors.RGBO(255,255,255,1)
           * Color(0xFFFFFFFF) **on the sequence:ARGB
           * Color.red.withOpacity(0.0)
           * Color.red.withBlue
           * Color.red.Shade500
           */
          // mix colors:
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            // color: Colors.orange,
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.pink]   //put at first the begin color then the end color.
            ),
          )
        ),

          // Images:
          // 1)from network
          Image.network("https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?cs=srgb&dl=pexels-jonas-kakaroto-736230.jpg&fm=jpg", width: 200, height: 200, fit: BoxFit.fill), //fit: BoxFit.fill or cover or contain
          // 2)from asset folder
          Image(image: AssetImage("assets/p3.jpg"), width: 150, height: 150,fit: BoxFit.fill,),



          // Buttons:
          RaisedButton(onPressed: (){} ,child: Text("Raised Button"), textColor: Colors.black, disabledColor: Colors.green,),
          RaisedButton.icon(onPressed: (){} ,icon:Icon(Icons.favorite, color: Colors.red), label: Text("Raised Button with Icon"), textColor: Colors.black, disabledColor: Colors.green, color: Colors.blueAccent,),
          FlatButton(onPressed: (){}, child: Text("Flat Button"), textColor: Colors.blue, disabledColor: Colors.grey,),
          FlatButton.icon(onPressed: (){},icon: Icon(Icons.add), label: Text("Add"), textColor: Colors.blue, disabledColor: Colors.grey,),
          OutlineButton(onPressed: (){}, child: Text("Outlined Button"), textColor: Colors.blue,),
          OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("Add"), textColor: Colors.blue,),
          ElevatedButton(onPressed: (){}, child: Text("Elevated Icon Button"), style: ButtonStyle(shape: MaterialStateProperty.all(CircleBorder())),),
          ElevatedButton.icon(onPressed: (){}, label: Text("Elevated Icon Button"), icon:Icon(Icons.notifications),),
          TextButton(onPressed: (){}, child: Text("Text Button"),),
          TextButton.icon(onPressed: (){}, label: Text("Text Button with Icon"), icon:Icon(Icons.notifications),),
          IconButton(onPressed: (){}, icon:Icon(Icons.notifications), color: Colors.green, hoverColor : Colors.orange,),
          // + (floatingActionButton its located outside body..)


          // TextField:
          TextField(
            // controller: t1,
            style: TextStyle(color: Colors.red, fontSize: 30),
            decoration: InputDecoration(
              fillColor: Colors.amber,
              filled: true, // without it the fillColor isnt working..
              hintText: "0",
              hintStyle: TextStyle(color: Colors.white),
              labelText: "first number",
              // labelStyle: ,
              prefixIcon: Icon(Icons.face, color: Colors.white,),
              // suffixIcon: ,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 10),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange, width: 15),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            keyboardType: TextInputType.number,
            obscureText: true,
          ),



        ],),
      ),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.ac_unit), onPressed: onChanged,),
    );
  }
}