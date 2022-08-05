import 'package:flutter/material.dart';

class MainPAge extends StatefulWidget {
  const MainPAge({Key? key}) : super(key: key);

  @override
  State<MainPAge> createState() => _MainPAgeState();
}

class _MainPAgeState extends State<MainPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Container(
              color: Colors.blue[300],
            )
        ),
        Expanded(
            child: Container(
              color: Colors.grey[500],
            )
        ),
      ],),
    );
  }
}
