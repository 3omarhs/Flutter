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
      home: Vacation_Details(obj: items[1], ind: 0,),
    );
  }
}

class Vacation_Details extends StatefulWidget {

  final obj;
  final int ind;
  const Vacation_Details({super.key, required this.obj, this.ind=0});

  @override
  State<Vacation_Details> createState() => _Vacation_DetailsState();
}

class _Vacation_DetailsState extends State<Vacation_Details> {

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
                  Container(alignment: Alignment.centerLeft, child: Text('Vacation:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['vacation'].toString(),
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('From Date:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['from_date'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('To Date:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['to_date'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Period:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['period'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Value:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['value'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Note:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['note'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Status:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['status'].toString(),
                    keyboard: TextInputType.datetime,
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


