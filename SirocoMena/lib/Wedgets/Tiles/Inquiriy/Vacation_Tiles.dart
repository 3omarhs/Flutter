import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Attendance_Details.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Vacation_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Vacation_Tiles extends StatelessWidget {
  final String vacation;
  final String from_date;
  final String to_date;
  final String period;
  final String value;
  final String note;
  final String status;
  final obj;
  const Vacation_Tiles({Key? key, this.vacation='', this.from_date='', this.to_date='', this.period='', this.note='', this.value='', this.status='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vacation_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.sports_cricket, size: 25,),
            SizedBox(width: 10,),
            Text(vacation+' ('+period+')'),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 35,),
          Text(from_date+'-'+to_date)
        ],),
        trailing: Column(children: [
          Text(status),
          SizedBox(height: 15,),
          Text(value)
        ],),
      ),
    );
  }
}
