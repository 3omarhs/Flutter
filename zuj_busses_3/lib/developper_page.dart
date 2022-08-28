import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'busses_places.dart';
import 'loginscreen.dart';


class Developper_Page extends StatefulWidget {
  Developper_Page({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Developper_PageState createState() => _Developper_PageState();
}

class _Developper_PageState extends State<Developper_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
  /*Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container()
            ],
          ),
        ));
  }*/
}
