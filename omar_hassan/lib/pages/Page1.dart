import 'package:flutter/material.dart';
import 'package:omar_hassan/widgets/Buttons/IconBtn.dart';
import 'package:omar_hassan/widgets/Buttons/RaisedBtn.dart';
import 'package:omar_hassan/widgets/ContainerCoursees.dart';
import 'package:omar_hassan/widgets/HorizantalSpace.dart';
import 'package:omar_hassan/widgets/InstructCont.dart';
import 'package:omar_hassan/widgets/VerticalSpace.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int currentImg = 1;
  String img = "Images/logo1.png";
  ImageChanger(){
    if(currentImg == 1){
      img = "Images/logo1.png";
    }
    else if(currentImg == 2){
      img = "Images/logo2.png";
    }
    else {
      img = "Images/logo3.png";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Final Exam")),
        backgroundColor: Colors.red,
        actions: [
          IconBtn(),
          IconBtn(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(child: Column(children: [
          VerticalSpace(),
          Container(
            width: double.infinity,
            height: 200,
            child: Image(image: AssetImage(img), fit: BoxFit.fill,),
          ),
          VerticalSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            RaisedBtn(bgColor: Colors.red, foreColor: Colors.white, label: "Previous", onPressed: (){setState(() {
              if(currentImg == 1){
                currentImg = 3;
              }
              else{
                currentImg--;
              }
              ImageChanger();
            });},),
            RaisedBtn(bgColor: Colors.red, foreColor: Colors.white, label: "Next", onPressed: (){setState(() {
              if(currentImg == 3){
                currentImg = 1;
              }
              else{
                currentImg++;
              }
              ImageChanger();
            });},),
          ],),
          Container(width: double.infinity, child: Text("Courses", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red))),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              ContainerCoursees(img: "Images/C1.png"),
              ContainerCoursees(img: "Images/C2.png"),
              ContainerCoursees(img: "Images/C3.png"),
              ContainerCoursees(img: "Images/C4.png"),
              ContainerCoursees(img: "Images/C5.png"),
              ContainerCoursees(img: "Images/C6.png"),
            ],),
          ),
          Container(width: double.infinity, child: Text("Instructors", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.red))),
          Container(
            child: Column(children: [
              Row(children: [
                InstructCont(col: Colors.red, name: "Dr.Ahmad", dept: "CS Department"),
                HorizantalSpace(),
                InstructCont(col: Colors.green, name: "Dr.Hani", dept: "SE Department"),
              ],),
              VerticalSpace(),
              Row(children: [
                InstructCont(col: Colors.orange, name: "Dr.Khalid", dept: "CIS Department"),
                HorizantalSpace(),
                InstructCont(col: Colors.blue, name: "Dr.Ali", dept: "CS Department"),
              ],),
            ],),
          )
        ],)),
      ),

    );
  }
}
