import "package:flutter/material.dart";
import 'package:proj2/College/for_exam/Widgets/Buttons/RaisedBtn.dart';
import 'package:proj2/College/for_exam/Widgets/CheckBoxes/CheckBx.dart';
import 'package:proj2/College/for_exam/Widgets/TextBoxes/TextControl.dart';

class chkPage extends StatefulWidget {
  const chkPage({Key? key}) : super(key: key);

  @override
  State<chkPage> createState() => _chkPageState();
}

class _chkPageState extends State<chkPage> {
  @override

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3= TextEditingController();
  bool _value=false;  // defulat value

  MinMax()
  {
    setState(() {
      int n1 = int.parse(t1.text);
      int n2=int.parse(t2.text);
      int min = n1;

      if (_value ==true)  // value of checkBox
        {
          if (n2<min)
            min=n2;
          //min
        }
      else
        {
          if (n2>min)
            min=n2;
        }

      t3.text=min.toString();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),

      body: Column(
        children: [
          SizedBox(height: 10,),
          TextControl(cnt: t1, label: "No1"),
          SizedBox(height: 10,),
          TextControl(cnt: t2, label: "No2"),
          SizedBox(height: 10,),
         // CheckBox
  CheckBx(title: "Min", value: _value , onchanged: (value) {setState(() {_value = value;});}
  ,),
          //End of CheckBox
          SizedBox(height: 10,),
          RaisedBtn(bgColor: Colors.red,
            foreColor: Colors.white,
            label: "Result" ,
            onPressed: MinMax,),
          TextControl(cnt: t3, label: "Result")
        ],
      ),

    );
  }
}
