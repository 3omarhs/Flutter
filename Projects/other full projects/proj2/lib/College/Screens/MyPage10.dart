import 'package:flutter/material.dart';
import 'package:proj2/College/Widgets/ButtonControl10.dart';
import 'package:proj2/College/Widgets/TextControl10.dart';
import 'package:proj2/College/Widgets/VerticalSpace10.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

sum()
{
  setState(() {
    int n1 = int.parse(t1.text);
    int n2 = int.parse(t2.text);
    int s = n1+n2;
    t3.text = s.toString();


  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Sum"),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            VerticalSpace(),
            TextControl(label: "No1" , cnt: t1,),
            VerticalSpace(),
            TextControl(label: "No2" , cnt: t2,),
            VerticalSpace(),
            ButtonControl(label: "Sum", onPressed: sum,),
            VerticalSpace(),
            TextControl(label: "No3" , cnt: t3,),

          ],
        ),
      ),
    );
  }
}
