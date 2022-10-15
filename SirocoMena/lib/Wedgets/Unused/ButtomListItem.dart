import 'package:flutter/material.dart';

class ButtomListItem extends StatelessWidget {
  final Widget widget;
  final int ind;
  const ButtomListItem({Key? key, required this.widget, required this.ind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: widget,
      style: ElevatedButton.styleFrom(
        // backgroundColor: item_list_color
      ),
    );
  }
}
