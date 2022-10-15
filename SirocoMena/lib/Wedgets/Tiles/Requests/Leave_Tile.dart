import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Requests/Leave_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Leave_Tile extends StatelessWidget {
  final String Leave;
  final String From_Time;
  final String To_Time;
  final String Leave_Date;
  final String STATUS;
  final String Note;
  final String Manager_Note;
  final obj;
  const Leave_Tile({Key? key, this.Leave='', this.From_Time='', this.To_Time='', this.Leave_Date='', this.STATUS='', this.Note='', this.Manager_Note='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Leave_Details(obj: obj,)));
      },
      child: ListTile(
          title: Row(
            children: [
              Icon(Icons.free_breakfast_outlined, size: 25,),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text(Leave+', '+STATUS),
                  Text('('+Leave_Date+'-days),  '),
                ],
              ),
            ],
          ),
          subtitle: Row(children: [
            SizedBox(width: 35,),
            Text(From_Time+'-'+To_Time)
          ],),
          trailing: SizedBox(width: 80, child: Text('M: '+Manager_Note))
      ),
    );
  }
}
