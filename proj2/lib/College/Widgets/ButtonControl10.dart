import 'package:flutter/material.dart';

class ButtonControl extends StatelessWidget {
  final String label;
  final  VoidCallback? onPressed;

  const ButtonControl({Key? key, required this.label , this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: onPressed,
        child: Text(label),
        padding: EdgeInsets.all(30),
        color: Colors.red,
        textColor: Colors.white,

      ),
    );
  }
}
