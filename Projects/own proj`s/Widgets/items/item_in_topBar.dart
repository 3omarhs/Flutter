import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Run.dart';
import 'package:proj2/own%20proj%60s/ThisHome.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class item_in_topBar extends StatelessWidget {
  final String label;
  final Icon ico;
  const item_in_topBar({Key? key, required this.ico, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
        },
        child: Column(
          children: [
            ico,
            Text(label),
          ]
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
      )
    );
  }
}
