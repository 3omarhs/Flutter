import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  const second_page({Key? key}) : super(key: key);

  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(child: Text("Tap to return to the first page..")),
        ),
      ),
    );
  }
}
