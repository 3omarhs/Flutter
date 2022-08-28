import 'package:flutter/material.dart';

class InstructCont extends StatelessWidget {
  final Color col;
  final String name;
  final String dept;
  const InstructCont({Key? key, required this.col, required this.name, required this.dept}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Container(
          width: 55,
          height: 55,
          decoration: new BoxDecoration(
              color: col, //new Color.fromRGBO(255, 0, 0, 0.0),
              borderRadius: new BorderRadius.circular(30)
          ),
        ),
        SizedBox(width: 15,),
        Container(
          // width: 200,
          child: Column(children: [
            Text(name),
            Text(dept),
          ],),
        )
      ],),
    );
  }
}
