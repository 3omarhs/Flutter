import 'package:flutter/material.dart';
import 'package:omar_hassan/pages/Page3.dart';
import 'package:omar_hassan/widgets/Buttons/ElevatedBtn.dart';
import 'package:omar_hassan/widgets/TextFields/TextForm.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  calculate(){
    int txt4 = int.parse(txt3.text)*12;
    double txt5 = 0.16;
    double txt6 = txt4 - (txt4 * txt5);

    text4 = txt4.toString();
    text5 = txt5.toString();
    text6 = txt6.toString();
  }
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  String text4 = "";
  String text5 = "";
  String text6 = "";
  TextEditingController txt7 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Employee Info")),
        backgroundColor: Colors.red,
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextForm(cnt: txt1, label: "Name", validate: (text) {
            if (text == null || text.isEmpty) {
              return 'Name Can\'t be empty';
            }
            else
              return null;
          },),

          TextForm(cnt: txt2, label: "Dept", validate: (text) {
            if (text == null || text.isEmpty) {
              return 'Name Can\'t be empty';
            }
            else
              return null;
          },),

          TextForm(cnt: txt3, label: "Salary", validate: (text) {
            if (text == null || text.isEmpty) {
              return 'Name Can\'t be empty';
            }
            else
              return null;
          },),

          TextForm(cnt: txt7, label: "Position", validate: (text) {
            if (text == null || text.isEmpty) {
              return 'Name Can\'t be empty';
            }
            else
              return null;
          },),
          ElevatedBtn(str: "Report", bgColor: Colors.red, txtColor: Colors.white, onPressed: (){calculate();  Navigator.push(context, MaterialPageRoute(builder: (context) => Page3(t1 : txt1.text, t2 : txt2.text, t3 : txt3.text, t4 : text4.toString(), t5 : text5.toString(), t6 : text6.toString(), t7 : txt7.text)));  },)
        ],),
      ),
    );
  }
}
