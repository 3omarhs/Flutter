import 'package:flutter/material.dart';

class CheckBx extends StatelessWidget {
final String title;
  final bool value;
  final ValueChanged? onchanged;
  const CheckBx({Key? key ,required this.title, required this.value , this.onchanged}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        SizedBox(width:10),
        Checkbox(
          value: value,
          onChanged:onchanged,
        ),
      ],
    );
  }
}
