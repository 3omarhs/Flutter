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
      home: Vacations_Details(obj: items[1], ind: 0,),
    );
  }
}

class Vacations_Details extends StatefulWidget {

  final obj;
  final int ind;
  final bool editable;
  const Vacations_Details({super.key, required this.obj, this.ind=0, this.editable=false});

  @override
  State<Vacations_Details> createState() => _Vacations_DetailsState();
}

class _Vacations_DetailsState extends State<Vacations_Details> {
  List <String>VacationRequestStatus = lists['VacationRequestStatus']! as List<String>;
  late String VacationRequestStatusValue1=lists['VacationRequestStatus']![0].toString();

  List <String>VacationRequestVacations = lists['VacationRequestStatus']! as List<String>;
  late String dropdownValue1=lists['VacationRequestStatus']![0].toString();

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
                    initialValue: widget.editable==false? widget.obj['Vacation'].toString() : '',
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('From Date:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['From Date'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('To Date:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['To Date'].toString() : '',
                    keyboard: TextInputType.datetime,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Period:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Period'].toString() : '',
                    keyboard: TextInputType.number,
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Status:')),
                  Container(
                    padding: EdgeInsets.symmetric(vertical:  5.0, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: color_3),
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: DropdownButton(
                      isExpanded:true,
                      value: VacationRequestStatusValue1,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      // style: const TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        // color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (value) {
                        // This is called when the user selects an item.
                        widget.editable==false? null :
                        setState(() {
                          VacationRequestStatusValue1 = value!;
                        });
                      },
                      items: VacationRequestStatus.map<DropdownMenuItem>((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  // DetailsTextFormField(
                  //   initialValue: widget.obj['Status'].toString(),
                  //   editable: true,
                  // ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Note:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Note'].toString() : '',
                    editable: widget.editable,
                  ),
                  ColumnSpace(),

                  Container(alignment: Alignment.centerLeft, child: Text('Manager Note:')),
                  DetailsTextFormField(
                    initialValue: widget.editable==false? widget.obj['Manager Note'].toString() : '',
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


