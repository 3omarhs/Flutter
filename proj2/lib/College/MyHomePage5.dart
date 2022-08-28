import 'package:flutter/material.dart';

class MyHomePage5 extends StatefulWidget {
  const MyHomePage5({Key? key}) : super(key: key);

  @override
  State<MyHomePage5> createState() => _MyHomePage5State();
}

class _MyHomePage5State extends State<MyHomePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image App Buttons"),
      ),
      body: Column(
        children: [
          // Images:
          // 1)from network
          //Image.network("https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?cs=srgb&dl=pexels-jonas-kakaroto-736230.jpg&fm=jpg", width: 200, height: 200, fit: BoxFit.fill), //fit: BoxFit.fill or cover or contain
          // 2)from asset folder
          Image(image: AssetImage("assets/p3.jpg"), width: 150, height: 150,fit: BoxFit.fill,)
          // pubspec.yaml is in xml lang. XML is a standard language which can define other computer languages
        ],
      ),
    );
  }
}
