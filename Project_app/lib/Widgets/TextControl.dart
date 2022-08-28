import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String label;            // Required
  final TextEditingController? cnt;   // optional ?

  const TextControl({Key? key ,required this.label , this.cnt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cnt,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderSide: BorderSide( color: Colors.blue , width:2 , style: BorderStyle.solid),
        ),
      ),
    );
  }
}
