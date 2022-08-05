import 'package:flutter/material.dart';

class TextFormPass extends StatelessWidget {
  final TextEditingController cnt;
  final String label;
  final FormFieldValidator? validate;

  const TextFormPass({Key? key , required this.cnt , required this.label, this.validate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate ,
      controller: cnt,
      keyboardType: TextInputType.name ,
      obscureText: true,
      decoration: InputDecoration(

        labelText: label,
      ),

    );
  }
}
