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
      home: Attendane_Details(obj: items[1], ind: 0,),
    );
  }
}

class Attendane_Details extends StatefulWidget {

  final obj;
  final int ind;

  const Attendane_Details({super.key, required this.obj, this.ind=0});

  @override
  State<Attendane_Details> createState() => _Attendane_DetailsState();
}

class _Attendane_DetailsState extends State<Attendane_Details> {

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
                  Container(alignment: Alignment.centerLeft, child: Text('Shift:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['Shift'].toString(),
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Transaction Date:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['Transaction Date'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('TimeIn:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['TimeIn'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Timeout:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['Timeout'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('ShiftTimeIn:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['ShiftTimeIn'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('ShiftTimeOut:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['ShiftTimeOut'].toString(),
                    keyboard: TextInputType.datetime,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Required:')),
                  DetailsTextFormField(
                      initialValue: widget.obj['Required'].toString()
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('DayType:')),
                  DetailsTextFormField(
                      initialValue: widget.obj['DayType'].toString()
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Actual:')),
                  DetailsTextFormField(
                      initialValue: widget.obj['Actual'].toString()
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Leaves:')),
                  DetailsTextFormField(
                      initialValue: widget.obj['Leaves'].toString()
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Overtime:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['Overtime'].toString(),
                    keyboard: TextInputType.numberWithOptions(),
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Total:')),
                  DetailsTextFormField(
                    initialValue: widget.obj['Total'].toString(),
                    keyboard: TextInputType.number,
                  ),
                  ColumnEndSpace(),
                  //   ),
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


