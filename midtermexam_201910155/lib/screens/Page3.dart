

import 'package:midtermexam_201910155/Widgets/Buttons/RaisedBtn.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  final int no1;
  final int no2;
  final String op;
  final int result;
  const Page3({Key? key, required this.no1, required this.no2, required this.result, required this.op}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        titleSpacing: 50,
        actions: [
          // dont forget the button icoins here
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('No1'),
              SizedBox(width: 20,),
              Text(widget.no1.toString()),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('No2'),
              SizedBox(width: 20,),
              Text(widget.no2.toString()),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Operation'),
              SizedBox(width: 20,),
              Text(widget.op.toString()),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Result'),
              SizedBox(width: 20,),
              Text(widget.result.toString()),
            ],
          ),
          SizedBox(height: 20,),
          RaisedBtn(bgColor: Colors.blue, foreColor: Colors.white, label: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
          )
        ],
      ),
    );
  }
}
