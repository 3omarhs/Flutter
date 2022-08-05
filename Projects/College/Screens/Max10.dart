import 'package:flutter/material.dart';
import 'package:proj2/College/Widgets/ButtonControl10.dart';
import 'package:proj2/College/Widgets/TextControl10.dart';
import 'package:proj2/College/Widgets/VerticalSpace10.dart';

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
