import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/ButtomBar/ButtomList.dart';
import 'package:sirocomena/Wedgets/ColumnEndSpace.dart';
import 'package:sirocomena/Wedgets/SearchBox.dart';
import 'package:sirocomena/Wedgets/Tiles/Aprovals/ApprovalsHistory_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Aprovals/Approve_Tile.dart';
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
      home: ApprovalsP(obj: items[1], ind: 0,),
    );
  }
}

class ApprovalsP extends StatefulWidget {
  final obj;
  final int ind;
  const ApprovalsP({super.key, required this.obj, required this.ind});

  @override
  State<ApprovalsP> createState() => _ApprovalsPState();
}

class _ApprovalsPState extends State<ApprovalsP> {

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
            Text(widget.ind==0 ? 'Approvals' : ('Approvals History'),
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
                    child: widget.ind==0 ? Approve_Tile(Employee_Name: widget.obj[i]['Employee Name'], Approval_Type: widget.obj[i]['Approval Type'], Type: widget.obj[i]['Type'], Status: widget.obj[i]['Status'], Note: widget.obj[i]['Note'], Action: widget.obj[i]['Action'], obj: widget.obj[i],) :  //widget.obj[i]['']
                    (ApprovalsHistory_Tile(Employee_Name: widget.obj[i]['Employee Name'], Approval_Type: widget.obj[i]['Approval Type'], Type: widget.obj[i]['Type'], Status: widget.obj[i]['Status'], Employee_Note: widget.obj[i]['Employee Note'], obj: widget.obj[i],)),
                  ),
                ColumnEndSpace(),
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              child: ButtomList(
                  SearchButton: true,
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