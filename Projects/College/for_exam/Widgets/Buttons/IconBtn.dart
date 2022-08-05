import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  final String str;
  const IconBtn({Key? key, required this.str}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Icon(Icons.favorite) ,
      color: Colors.orange,

    );
  }
}
