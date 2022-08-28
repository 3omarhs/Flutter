import 'package:flutter/material.dart';
import 'screen1.dart';

class screen2 extends StatelessWidget {
  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacementNamed(
      '/x1',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: InkWell(
          child: Text("Go to screen 1", style: TextStyle(fontSize: 35),),
          onTap: () => selectScreen(context),
        ),
      ),
    );
  }
}