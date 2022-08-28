import "package:flutter/material.dart";


class RadioButton extends StatelessWidget {
  final String title;
  final int value;
  final int groupValue;
  final ValueChanged? onChanged;

  const RadioButton(
      {Key? key, this.onChanged, required this.title, required this.value, required this.groupValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        leading: Radio(
          value: value, groupValue: groupValue, onChanged: onChanged,)
    );
  }
}