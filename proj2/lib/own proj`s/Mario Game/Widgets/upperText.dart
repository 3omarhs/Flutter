import 'package:flutter/material.dart';

class upperText extends StatelessWidget {
  final int money;
  const upperText({Key? key, required this.money}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text("MARIO"),
        SizedBox(height: 10),
        Text(money.toString())
      ],),
    );
  }
}
