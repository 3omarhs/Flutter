import 'package:flutter/material.dart';

class barriers extends StatelessWidget {
  final size;
  const barriers({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'lib/Images/tube.png',
      fit: BoxFit.fill,
      width: 100,
      height: size+0.0,

    );

    //   Container(
    //   width: 100,
    //   height: size+0.0,
    //   decoration: BoxDecoration(
    //     color: Colors.green,
    //     border: Border.all(width: 10, color: Colors.greenAccent),
    //     borderRadius: BorderRadius.circular(15)
    //   ),
    // );
  }
}
