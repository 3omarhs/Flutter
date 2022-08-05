import 'package:flutter/material.dart';
import 'package:proj2/College/Widgets/ButtonControl10.dart';
import 'package:proj2/College/Widgets/TextControl10.dart';
import 'package:proj2/College/Widgets/VerticalSpace10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:MyPage(),
      home:Max(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Max extends StatefulWidget {
  const Max({Key? key}) : super(key: key);

  @override
  State<Max> createState() => _MaxState();
}

class _MaxState extends State<Max> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  max()
  {
    setState(() {
      int n1 = int.parse(t1.text);
      int n2 = int.parse(t2.text);
      int s;
      if(n1>n2)
        s = n1;
      else
        s = n2;
      t3.text = s.toString();
    });
  }

  min()
  {
    setState(() {
      int n1 = int.parse(t1.text);
      int n2 = int.parse(t2.text);
      int s;
      if(n1<n2)
        s = n1;
      else
        s = n2;
      t3.text = s.toString();
    });
  }

  SumNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      int c = a + b;
      t3.text = c.toString();
    });
  }

  MulNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      int c = a * b;
      t3.text = c.toString();
    });
  }

  SubNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      int c = a - b;
      t3.text = c.toString();
    });
  }

  DivNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      double c = a / b;
      t3.text = c.toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Max"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            VerticalSpace(),
            TextControl(label: "No1" , cnt: t1,),
            VerticalSpace(),
            TextControl(label: "No2" , cnt: t2,),
            VerticalSpace(),
            ButtonControl(label: "Max", onPressed: max,),
            VerticalSpace(),
            TextControl(label: "No3" , cnt: t3,),

          ],
        ),
      ),
    );
  }
}

