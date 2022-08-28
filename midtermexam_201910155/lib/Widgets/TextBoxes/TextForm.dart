import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final TextEditingController? cnt;
  final String label;
  final FormFieldValidator? validate;
  final double? width;

  const TextForm({Key? key , this.cnt , required this.label, this.validate, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextFormField(
        validator: validate ,
        controller: cnt,
        keyboardType: TextInputType.name ,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2 , color: Colors.deepOrange , style: BorderStyle.solid),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2 , color: Colors.deepOrange , style: BorderStyle.solid),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2 , color: Colors.deepOrange , style: BorderStyle.solid),
          ),
          labelText: label,
        ),

      ),
    );
  }
}
