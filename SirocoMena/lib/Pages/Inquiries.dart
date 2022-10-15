import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/ButtomBar/ButtomList.dart';
import 'package:sirocomena/Wedgets/ColumnEndSpace.dart';
import 'package:sirocomena/Wedgets/SearchBox.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/Attendance_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/Leaves_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/Overtime_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/PersonalInfo_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/SalaryDetails_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/Salary_Tile.dart';
import 'package:sirocomena/Wedgets/Tiles/Inquiriy/Vacation_Tiles.dart';
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
      home: Inquiries(obj: items[0], ind: 0,),
    );
  }
}

class Inquiries extends StatefulWidget {
  final obj;
  final int ind;
  const Inquiries({super.key, required this.obj, required this.ind});

  @override
  State<Inquiries> createState() => _InquiriesState();
}

class _InquiriesState extends State<Inquiries> {

  @override
  Widget build(BuildContext context) {
    // print(widget.obj);
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){Navigator.pop(context);},
          child: Icon(Icons.arrow_back)
        ),
        title: Column(
          children: [
            Text('SIROCo MENA', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),),
            Text(widget.ind==0 ? 'Personal Information' :  //widget.obj[i]['']
              (widget.ind==1? 'My Leaves' :
                (widget.ind==2? 'My Vacation' :
                  (widget.ind==3? 'Slip Salary' :
                    (widget.ind==4? 'Salary Details' :
                      (widget.ind==5? 'My Overtime' :
                        'My Attendance'
                      )
                    )
                  )
                )
              ),

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
                  child: widget.ind==0 ?
                  PersonalInfo_Tiles(FirstName: widget.obj[i]['firstName'], SecondName: widget.obj[i]['secondName'], ThirdName: 'Null', LastName: widget.obj[i]['lastName'], Gender: widget.obj[i]['gender'], Nationality: widget.obj[i]['country'], PhoneNumber: widget.obj[i]['EmployeeID'], obj: widget.obj[i],) :
                  (widget.ind==1? Leaves_Tiles(leave: widget.obj[i]['leave'], from_time: widget.obj[i]['from_time'], to_time: widget.obj[i]['to_time'],  leave_date: widget.obj[i]['leave_date'], leave_hours: widget.obj[i]['leave_hours'], posted: widget.obj[i]['posted'], obj: widget.obj[i],) :
                  (widget.ind==2? Vacation_Tiles(vacation: widget.obj[i]['vacation'], from_date: widget.obj[i]['from_date'], to_date: widget.obj[i]['to_date'], period: widget.obj[i]['period'], value: widget.obj[i]['value'], note: widget.obj[i]['note'], status: widget.obj[i]['status'], obj: widget.obj[i],) :
                  (widget.ind==3? Salary_Tiles(Employee: widget.obj[i]['Employee'], Year: widget.obj[i]['Year'], Month: widget.obj[i]['Month'], obj: widget.obj[i],) :
                  (widget.ind==4? SalaryDetails_Tile(Description: widget.obj[i]['Description'], Amount: widget.obj[i]['Amount'], obj: widget.obj[i],) :
                  (widget.ind==5? Overtime_Tile(Overtime: widget.obj[i]['Overtime'], OvertimeDate: widget.obj[i]['OvertimeDate'], Total_Hour: widget.obj[i]['Total Hour'], Duration: widget.obj[i]['Duration'], Value: widget.obj[i]['Value'], obj: widget.obj[i],) :
                  Attendance_Tile(Shift: widget.obj[i]['Shift'], Transaction_Date: widget.obj[i]['Transaction Date'], TimeIn: widget.obj[i]['TimeIn'], Timeout: widget.obj[i]['Timeout'], ShiftTimeIn: widget.obj[i]['ShiftTimeIn'], ShiftTimeOut: widget.obj[i]['ShiftTimeOut'], Required: widget.obj[i]['Required'], DayType: widget.obj[i]['DayType'], Actual: widget.obj[i]['Actual'], Leaves: widget.obj[i]['Leaves'], Overtime: widget.obj[i]['Overtime'], Total: widget.obj[i]['Total'], obj: widget.obj[i],)
                  )
                  )
                  )
                  )
                  ),
                ),
                ColumnEndSpace(),
              // Container(color: Colors.blue, width: 50, height: 50)
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
