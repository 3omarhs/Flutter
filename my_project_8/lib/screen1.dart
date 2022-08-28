import 'package:flutter/material.dart';
import 'screen2.dart';

class screen1 extends StatelessWidget {
  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacementNamed(
      '/x2',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: InkWell(
          child: Text("Go to screen 2", style: TextStyle(fontSize: 35),),
          onTap: () => selectScreen(context),
        ),
      ),
    );
  }
}