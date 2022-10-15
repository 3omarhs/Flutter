import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/ColumnSpace.dart';


class textWithGrid extends StatelessWidget {
  final Widget obj;
  const textWithGrid({Key? key, required this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            color: color_4,
            height: 35,
            child: Text(obj.toString(), style: TextStyle(fontSize: 20, color: color_3),)
        ),
        ColumnSpace(),
        // Container(
        //     padding: EdgeInsets.only(left: 10),
        //     alignment: Alignment.topLeft,
        //     child: Text(txt)
        // ),
        Container(
          child: obj,
        ),
        ColumnSpace(),
      ],
    );
  }
}
