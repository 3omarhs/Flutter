import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/ButtomBar/ButtomList.dart';
import 'package:sirocomena/Wedgets/ColumnEndSpace.dart';
import 'package:sirocomena/Wedgets/ColumnSpace.dart';
import 'package:sirocomena/Wedgets/DetailsTextFormField.dart';
import 'package:sirocomena/Wedgets/SearchBox.dart';
import 'package:sirocomena/data.dart';


void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seroco Mena',
      theme: ThemeData(
        primarySwatch: color_0,
      ),
      home: PersonalInfo_Details(obj: items[1], ind: 0,),
    );
  }
}

class PersonalInfo_Details extends StatefulWidget {

  final obj;
  final int ind;
  const PersonalInfo_Details({super.key, required this.obj, this.ind=0});

  @override
  State<PersonalInfo_Details> createState() => _PersonalInfo_DetailsState();
}

class _PersonalInfo_DetailsState extends State<PersonalInfo_Details> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){
              ApearSearchBox=false;
              Navigator.pop(context);
              },
            child: Icon(Icons.arrow_back)
        ),
        title: Column(
          children: [
            Text('SIROCo MENA', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
            Text('Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(alignment: Alignment.centerLeft, child: Text('First Name:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['firstName'].toString(),
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Second Name:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['secondName'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Third Name:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['thirdName'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Last Name:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['lastName'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Gender:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['gender'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Nationality:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['country'].toString(),
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Phone Number:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['EmployeeID'].toString(),
                  ),
                  ColumnEndSpace(),
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: ButtomList(
                  action1: (){setState(() {ApearSearchBox==false? Navigator.of(context).pop() : ApearSearchBox=false;});},
                  action3: (){setState(() {ApearSearchBox = !ApearSearchBox;});}
              )
          ),
          ApearSearchBox==true? Positioned(
              child: Container(
                  child: SearchBox()
              )
          ) : Container(),
          Container()
        ],
      ),
      // bottomNavigationBar: buttomNavBar(),
    );
  }
}


