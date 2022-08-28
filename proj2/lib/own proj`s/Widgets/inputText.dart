import 'package:flutter/material.dart';

class inputText extends StatelessWidget {
  final bool obsecure;
  final String hText;
  final Icon? ico;

  const inputText({Key? key, this.ico, required this.hText, required this.obsecure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obsecure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(),
        hintText: hText,
        suffixIcon: ico,
      ),
    );
  }
}
