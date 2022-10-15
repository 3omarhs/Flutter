import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Requests/Vacation_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Vacation_Tile extends StatelessWidget {
  final String Vacation;
  final String From_Date;
  final String To_Date;
  final String Period;
  final String Status;
  final String Note;
  final String Manager_Note;
  final obj;
  const Vacation_Tile({Key? key, this.Vacation='', this.From_Date='', this.To_Date='', this.Period='', this.Status='', this.Note='', this.Manager_Note='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vacations_Details(obj: obj,)));
      },
      child: ListTile(
        title: Row(
          children: [
            Icon(Icons.sports_cricket, size: 25,),
            SizedBox(width: 10,),
            Column(
              children: [
                Text(Vacation+', '+Status),
                Text('('+Period+'-days)'),
              ],
            ),
          ],
        ),
        subtitle: Row(children: [
          SizedBox(width: 35,),
          Text(From_Date+'-'+To_Date)
        ],),
        trailing: SizedBox(width: 80, child: Text('M: '+Manager_Note))
      ),
    );
  }
}
