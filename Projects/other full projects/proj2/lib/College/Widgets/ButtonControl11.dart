import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final String str;
  final VoidCallback? onPressed;
  const ButtonControl({Key? key, required this.str, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: onPressed,
        child: Text(str),
        padding: EdgeInsets.all(15),
        color: Colors.red,
      ),
    );
  }
}
