import 'package:flutter/material.dart';

class Green extends StatelessWidget {
  const Green({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF023f54),
      appBar: AppBar(
        backgroundColor: Color(0xFF023f54),
        brightness: Brightness.dark,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF4cb253),
        width: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Image.asset("images/3.png", width: 150,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: SizedBox(child: Container(child: Text("غيداء حسان جميل جمال", style: TextStyle(fontSize: 28, color: Colors.white),),),),
          ),
          Image.asset("images/2.jpg",),
        ]),
      ),
    );
  }
}
