import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';

class DetailsTextFormField extends StatelessWidget {
  final String initialValue;
  final bool nullable;
  final TextInputType keyboard;
  final String label;
  final bool editable;
  const DetailsTextFormField({Key? key, this.initialValue='', this.nullable=true, this.keyboard=TextInputType.text, this.label='', this.editable=false} ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: initialValue,
      decoration: new InputDecoration(
        labelText: label,
        // fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(25.0),
          borderSide: new BorderSide(color: editable ? color_1 : color_4),
        ),
        //fillColor: Colors.green
        contentPadding: new EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      ),
      validator: (val) {
        if ((val?.length == 0)&&(nullable==false)) {
          return "This field cannot be empty!";
        } else {
          return null;
        }
      },
      keyboardType: keyboard,
      enabled: editable,
    );
  }
}
