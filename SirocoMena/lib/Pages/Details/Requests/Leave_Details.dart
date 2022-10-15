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
      home: Leave_Details(obj: items[1], ind: 0,),
    );
  }
}

class Leave_Details extends StatefulWidget {

  final obj;
  final int ind;
  final bool editable;
  const Leave_Details({super.key, required this.obj, this.ind=0, this.editable=false});

  @override
  State<Leave_Details> createState() => _Leave_DetailsState();
}

class _Leave_DetailsState extends State<Leave_Details> {

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
                  Container(alignment: Alignment.centerLeft, child: Text('Leave:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Leave'].toString() : '',
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('From Time:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['From Time'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('To Time:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['To Time'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Leave Date:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Leave Date'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('STATUS:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['STATUS'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Note:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Note'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Manager Note:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Manager Note'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
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


