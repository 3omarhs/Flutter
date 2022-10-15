import 'package:flutter/material.dart';
import 'package:sirocomena/Pages/Details/Approvals/Approve_Details.dart';
import 'package:sirocomena/Pages/HomePage.dart';
import 'package:sirocomena/Wedgets/Tile_Button.dart';

class Approve_Tile extends StatelessWidget {
  final String Employee_Name;
  final String Approval_Type;
  final String Type;
  final String Status;
  final String Note;
  final String Action;
  final obj;
  const Approve_Tile({Key? key, this.Employee_Name='', this.Approval_Type='', this.Type='', this.Status='', this.Note='', this.Action='', this.obj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tile_Button(
      onPressed: (){
        ApearSearchBox=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Approve_Details(obj: obj,)));
      },
      child: ListTile(
          title: Row(
            children: [
              Icon(Icons.check, size: 25,),
              SizedBox(width: 10,),
              Text(Employee_Name),
            ],
          ),
          subtitle: Row(children: [
            SizedBox(width: 35,),
            // Text(Type+', '+Status+', '+Approval_Type),
            Text(Approval_Type+', Type: '+Type+'('+Status+')')
          ],),
          trailing: SizedBox(width: 80, child: Text('Action: '+Action))
      ),
    );
  }
}
