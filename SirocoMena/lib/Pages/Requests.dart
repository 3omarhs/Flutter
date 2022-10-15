import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Requests/Leave_Details.dart';
import 'package:sirocomena/Pages/Details/Requests/OvertimeR_Details.dart';
import 'package:sirocomena/Pages/Details/Requests/Vacation_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Pages/TestPage.dart';
import 'package:sirocomena/Wedgets/ButtomBar/ButtomList.dart';
import 'package:sirocomena/Wedgets/ColumnEndSpace.dart';
import 'package:sirocomena/Wedgets/SearchBox.dart';
import 'package:sirocomena/Wedgets/Tiles/Requests/Leave_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Requests/Overtime_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Requests/Vacation_Tile.dart';
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
      home: RequestsP(obj: items[1], ind: 0,),
    );
  }
}

class RequestsP extends StatefulWidget {
  final obj;
  final int ind;
  const RequestsP({super.key, required this.obj, required this.ind});

  @override
  State<RequestsP> createState() => _RequestsPState();
}

class _RequestsPState extends State<RequestsP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back)
        ),
        title: Column(
          children: [
            Text('SIROCo MENA', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
            Text(widget.ind==0 ? 'Vacation Request' : widget.ind==1 ?('Leave Request') : ('Overtime Request'),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                for(int i=0;i<((widget.obj as List).length);i++)
                  Padding(
                      padding: EdgeInsets.symmetric(vertical:  TilesSpacing),
                      child: widget.ind==0 ? Vacation_Tile(Vacation: widget.obj[i]['Vacation'], From_Date: widget.obj[i]['From Date'], To_Date: widget.obj[i]['To Date'], Period: widget.obj[i]['Period'], Status: widget.obj[i]['Status'], Note: widget.obj[i]['Note'], Manager_Note: widget.obj[i]['Manager Note'], obj: widget.obj[i],) :  //widget.obj[i]['']
                      widget.ind==1 ? Leave_Tile(Leave: widget.obj[i]['Leave'], From_Time: widget.obj[i]['From Time'], To_Time: widget.obj[i]['To Time'], Leave_Date: widget.obj[i]['Leave Date'], STATUS: widget.obj[i]['STATUS'], Note: widget.obj[i]['Note'], Manager_Note: widget.obj[i]['Manager Note'], obj: widget.obj[i],) :
                      Overtime_Tile(Overtime: widget.obj[i]['Overtime'], Amount: widget.obj[i]['Amount'], Overtime_Date: widget.obj[i]['Overtime Date'], Calculation_Date: widget.obj[i]['Calculation Date'], Manager_Note: widget.obj[i]['Manager Note'], Duration: widget.obj[i]['Duration'], Rate: widget.obj[i]['Rate'], Note: widget.obj[i]['Note'], Status: widget.obj[i]['Status'], obj: widget.obj[i],)
                    // (),
                  ),
                ColumnEndSpace(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
              child: ButtomList(
                  SearchButton: true,
                  AddButton: true,
                  action1: (){setState(() {ApearSearchBox==false? Navigator.of(context).pop() : ApearSearchBox=false;});},
                  // action2: (){setState(() {Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage()));});},
                  action2: (){setState(() {
                    widget.ind==0? Navigator.push(context, MaterialPageRoute(builder: (context) => Vacations_Details(obj: widget.obj, editable: true,))) :
                    widget.ind==1? Navigator.push(context, MaterialPageRoute(builder: (context) => Leave_Details(obj: widget.obj, editable: true,))) :
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OvertimeR_Details(obj: widget.obj, editable: true,)));
                  });},
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
      // bottomNavigationBar: buttomNavBar(addButton: true),
    );
  }
}