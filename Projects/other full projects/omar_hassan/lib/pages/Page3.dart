import 'package:flutter/material.dart';
import 'package:omar_hassan/widgets/Buttons/RaisedBtn.dart';

class Page3 extends StatefulWidget {
  final String t1;
  final String t2;
  final String t3;
  final String t4;
  final String t5;
  final String t6;
  final String t7;
  const Page3({Key? key, required this.t1, required this.t2, required this.t3, required this.t4, required this.t5, required this.t6, required this.t7}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Back")),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('Name'),
                  SizedBox(width: 20,),
                  Text(widget.t1.toString()),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Dept:'),
                  SizedBox(width: 20,),
                  Text(widget.t2.toString()),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Salary:'),
                  SizedBox(width: 20,),
                  Text(widget.t3.toString()),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Yearly Salary:'),
                  SizedBox(width: 20,),
                  Text(widget.t4.toString()),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Tax:'),
                  SizedBox(width: 20,),
                  Text(widget.t5.toString()),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Net Salary:'),
                  SizedBox(width: 20,),
                  Text(widget.t6.toString()),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Position:'),
                  SizedBox(width: 20,),
                  Text(widget.t7.toString()),
                ],
              ),
              SizedBox(height: 20,),
              RaisedBtn(bgColor: Colors.red, foreColor: Colors.white, label: 'Back',
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
