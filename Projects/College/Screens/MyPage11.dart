import 'package:flutter/material.dart';
import 'package:proj2/College/Widgets/TextForm11.dart';
import 'package:proj2/College/Widgets/ButtonControl11.dart';
import 'package:proj2/own%20proj%60s/Widgets/VerticalSpace.dart';

class MyPage11 extends StatefulWidget {
  const MyPage11({Key? key}) : super(key: key);

  @override
  State<MyPage11> createState() => _MyPage11State();
}

class _MyPage11State extends State<MyPage11> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project 11"),
      ),
      body: Form(
       key: formKey,
        child: Column(
          children: [
            VerticalSpace(),
            TextForm11(str: "No1",cnt: t1, validator: (value) {
              if(value.toString().isEmpty)
                return "No1 is Empty";
              else
                return null;
            }),
            VerticalSpace(),
            TextForm11(str: "No2",cnt: t2, validator: (value) {
              if(value.toString().isEmpty)
                return "No2 is Empty";
              else
                return null;
            }),
            VerticalSpace(),
            ButtonControl(str: "Sum", onPressed: (){
              setState(() {
                if(formKey.currentState!.validate()){
                  int no1 = int.parse(t1.text);
                  int no2 = int.parse(t2.text);
                  int sum = no1 + no2;
                  t3.text = sum.toString();
                }
              });
            }),
            VerticalSpace(),
            TextForm11(str: "Result", cnt: t3)
          ],
        ),
      ),
    );
  }
}
