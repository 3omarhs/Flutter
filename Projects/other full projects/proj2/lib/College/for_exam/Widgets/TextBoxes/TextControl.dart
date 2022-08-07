import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final TextEditingController cnt;
  final String label;
  final TextInputType? inputType;
  const TextControl({Key? key , this.inputType, required this.cnt , required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cnt,
      keyboardType: inputType ,
      decoration: InputDecoration(
        labelText: label,
      ),
     obscureText: false,
    );
  }
}
