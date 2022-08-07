import 'package:midtermexam_201910155/Widgets/Buttons/RaisedBtn.dart';
import 'package:midtermexam_201910155/Widgets/TextBoxes/TextControl.dart';
import 'package:midtermexam_201910155/screens/Page3.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  TextEditingController no1Cnt = TextEditingController();
  TextEditingController no2Cnt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artihmatics'),
        titleSpacing: 50,
        actions: [
          IconButton(onPressed: null, icon: Icon(Icons.add)),
          SizedBox(width: 20,),
          IconButton(onPressed: null, icon: Icon(Icons.add)),
          // dont forget the button icoins here
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          TextControl(label: 'No1', cnt: no1Cnt,preicon : Icon(Icons.add)),
          SizedBox(height: 20,),
          TextControl(label: 'No2', cnt: no2Cnt , preicon : Icon(Icons.add)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedBtn(bgColor: Colors.blue, foreColor: Colors.white, label: 'Sum',
                onPressed: (){
                  int result = 0;
                  int no1 = int.parse(no1Cnt.text);
                  int no2 = int.parse(no2Cnt.text);
                  result = no1+no2;
                  String op = 'Sum';
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Page3(
                        no1 : no1,
                        no2 : no2,
                        op : op,
                        result : result,
                      )
                  ));
                },
              ),
              SizedBox(width: 20,),
              RaisedBtn(bgColor: Colors.blue, foreColor: Colors.white, label: 'Multiply',
                onPressed: () {
                  int result = 0;
                  int no1 = int.parse(no1Cnt.text);
                  int no2 = int.parse(no2Cnt.text);
                  result = no1*no2;
                  String op = 'Multiply';
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Page3(
                        no1 : no1,
                        no2 : no2,
                        op : op,
                        result : result,
                      )
                  ));
                },
              ),
              SizedBox(width: 20,),
              RaisedBtn(bgColor: Colors.blue, foreColor: Colors.white, label: 'Division',
                onPressed: (){
                  int result = 0;
                  int no1 = int.parse(no1Cnt.text);
                  int no2 = int.parse(no2Cnt.text);
                  result = (no1/no2).toInt();
                  String op = 'Division';
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Page3(
                        no1 : no1,
                        no2 : no2,
                        op : op,
                        result : result,
                      )
                  ));
                },
              ),
            ],
          )
        ],
      ),
    );
  }

}
