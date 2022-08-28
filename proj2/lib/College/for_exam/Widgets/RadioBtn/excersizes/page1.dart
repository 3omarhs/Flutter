import 'package:flutter/material.dart';
import 'package:proj2/College/for_exam/Widgets/RadioBtn/excersizes/Login.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
          child: Column(children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login()),);
              },
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red
                ),
                child: Center(child: Text("Login Page", style: TextStyle(fontSize: 28),)),
              ),
            )
          ],)
      ),
    );
  }
}
