import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Inquiry/Leaves_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Leaves_Tiles extends StatelessWidget {
  final String leave;
  final String from_time;
  final String to_time;
  final String leave_date;
  final String leave_hours;
  final String posted;
  final obj;
  const Leaves_Tiles({Key? key, this.leave='', this.from_time='', this.to_time='', this.leave_date='', this.leave_hours='', this.posted='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Leaves_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.free_breakfast_outlined, size: 25,),
            SizedBox(width: 10,),
            Text(leave_hours+', '+from_time+'-'+to_time),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 35,),
          Text('Leave:'+leave_date+'-'+leave_hours)
        ],),
        trailing: Column(children: [
          Text(leave),
        ],),
      ),
    );
  }
}
