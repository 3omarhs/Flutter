import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';

class DropdownList extends StatelessWidget {
  const DropdownList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> list1 = <String>['One', 'Two', 'Three', 'Four'];
    String dropdownValue1 = list1.first;
    return Container(
      padding: EdgeInsets.symmetric(vertical:  5.0, horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(color: color_4),
          borderRadius: BorderRadius.circular(25)
      ),
      child: DropdownButton<String>(
        isExpanded:true,
        value: dropdownValue1,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        // style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          // color: Colors.deepPurpleAccent,
        ),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          // setState(() {
            dropdownValue1 = value!;
          // });
        },
        items: list1.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
