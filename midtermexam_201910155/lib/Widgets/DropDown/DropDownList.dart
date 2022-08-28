import 'package:flutter/material.dart';

class DropDownList extends StatelessWidget {

  final List<String> items;
  final String value;
  final ValueChanged? onChanged;
  const DropDownList({Key? key ,required this.items, required this.value , this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
     // width: double.infinity,
      children :[
        Text("Choose Color"),
        SizedBox(width:10),
        DropdownButton(
          dropdownColor: Colors.orange,
         iconEnabledColor: Colors.red,
         hint: Text("Enter ColoR"),
        alignment: Alignment.topLeft,
        // Initial Value
        value: value,

        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(items),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: onChanged,
      ),
    ]
    );
  }
}
