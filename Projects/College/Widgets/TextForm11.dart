import 'package:flutter/material.dart';

class TextForm11 extends StatelessWidget {
  final String str;
  final TextEditingController cnt;
  final FormFieldValidator? validator;
  const TextForm11({Key? key, required this.str, required this.cnt, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: cnt,
      validator: validator,
      decoration: InputDecoration(
        labelText: str,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 15,
          )
        )
      ),
    );
  }
}
