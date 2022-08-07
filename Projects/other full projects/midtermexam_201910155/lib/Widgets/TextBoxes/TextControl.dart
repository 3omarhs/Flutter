import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final TextEditingController cnt;
  final String label;
  final TextInputType? inputType;
  final Widget? preicon;
  const TextControl({Key? key , this.inputType, required this.cnt , required this.label,required this.preicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cnt,
      keyboardType: inputType ,

      decoration: new InputDecoration(
        prefixIcon: preicon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.purple, width: 2),
        ),
        labelText: label,
      ),
     obscureText: false,
    );
  }
}
