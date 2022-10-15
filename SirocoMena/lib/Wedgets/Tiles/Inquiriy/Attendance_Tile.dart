import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Attendance_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Attendance_Tile extends StatelessWidget {
  final String Shift;
  final String Transaction_Date;
  final String TimeIn;
  final String Timeout;
  final String ShiftTimeIn;
  final String ShiftTimeOut;
  final String Required;
  final String DayType;
  final String Actual;
  final String Leaves;
  final String Overtime;
  final String Total;
  final obj;
  const Attendance_Tile({Key? key, this.Shift='', this.Transaction_Date='', this.TimeIn='', this.Timeout='', this.ShiftTimeIn='', this.ShiftTimeOut='', this.Required='', this.DayType='', this.Actual='', this.Leaves='', this.Overtime='', this.Total='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        // print('object');
        // print(obj);
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Attendane_Details(obj: obj)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.manage_history, size: 25,),
            SizedBox(width: 5,),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Shift: '+Shift+' ('+Transaction_Date+')')
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(DayType+',  Required?: '+Required)
                ),
              ],
            ),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 35,),
          Column(
            children: [
              Text('Time: '+TimeIn+'-'+Timeout),
              Text('Overtime: '+Overtime),
            ],
          )
        ],),
        trailing: SizedBox(
          width: 70,
          child: Column(
            children: [
              Text('Total: '+Total),
              Text('Leaves: '+Leaves)
            ],
          ),
        ),
      ),
    );
  }
}
