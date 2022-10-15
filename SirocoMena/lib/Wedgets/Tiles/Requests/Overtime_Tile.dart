import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Requests/Leave_Details.dart';
import 'package:sirocomena/Pages/Details/Requests/OvertimeR_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Overtime_Tile extends StatelessWidget {
  final String Overtime;
  final String Amount;
  final String Overtime_Date;
  final String Calculation_Date;
  final String Manager_Note;
  final String Duration;
  final String Rate;
  final String Note;
  final String Status;
  final obj;
  const Overtime_Tile({Key? key, this.Overtime='', this.Amount='', this.Overtime_Date='', this.Calculation_Date='', this.Manager_Note='', this.Duration='', this.Rate='', this.Note='', this.Status='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => OvertimeR_Details(obj: obj,)));
      },
      child: ListTile(
          title: Row(
            children: [
              Icon(Icons.more_time, size: 25,),
              SizedBox(width: 10,),
              Text(Overtime+', ('+Amount+')'),
            ],
          ),
          subtitle: Row(children: [
            SizedBox(width: 35,),
            Text(Duration+'-'+Rate)
          ],),
          trailing: SizedBox(width: 80, child: Text(Status))
      ),
    );
  }
}
