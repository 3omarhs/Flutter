import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Attendance_Details.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Overtime_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Overtime_Tile extends StatelessWidget {
  final String Overtime;
  final String OvertimeDate;
  final String Total_Hour;
  final String Duration;
  final String Value;
  final obj;
  const Overtime_Tile({Key? key, this.Overtime='', this.OvertimeDate='', this.Total_Hour='', this.Duration='', this.Value='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Overtime_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.add_task, size: 25,),
            SizedBox(width: 10,),
            Text('Overtime: '+Overtime+' ('+Value+')'),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 35,),
          Text('Total Hour`s: '+Total_Hour+', Duration: '+Duration)
        ],),
        trailing: Text(OvertimeDate),
      ),
    );
  }
}
