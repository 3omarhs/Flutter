import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/Sub%20Items/rounded_image_1.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/dialog.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

class my_tile extends StatelessWidget {
  final String img;
  final String name;
  final String message_data;
  final IconData ico;
  final String date;
  final bool pinned;
  const my_tile({Key? key, required this.img, required this.name, required this.message_data, required this.ico, required this.date, this.pinned=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // title: Text("ListTile title.."),
      title: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
        },
        child: Text(name)
      ),
      // leading: Text("Leading.."),
      leading: InkWell(
        onTap: (){showDialog(context: context,builder: (BuildContext context){return dialog(img: img, name: name);});},
        child: rounded_image_1(img: img)
      ),
      // subtitle: Text("Subtitle.."),
      subtitle: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Row(children: [
            Icon(ico),
            Text(message_data)
          ],),
        ),
      ),
      // trailing: Text("Subtitle.."),
      trailing: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
        },
        child: Column(children: [
          Text(date),
          if(pinned == true)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(Icons.push_pin, color: Colors.black,),
            )
        ],),
      ),
    );
  }
}
