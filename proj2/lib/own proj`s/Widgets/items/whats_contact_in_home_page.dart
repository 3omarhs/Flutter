import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/dialog.dart';
import 'package:proj2/own%20proj%60s/second_page.dart';

// whats_contact_in_home_page(date: "17/12/2022",img: "assets/p4.jpg", name: "Omar Hassan", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: true,),


class whats_contact_in_home_page extends StatelessWidget {
  final String txt;
  final String name;
  final String date;
  final bool is_pinned;
  final String img;
  final IconData ico;
  const whats_contact_in_home_page({Key? key, required this.txt, required this.name, required this.date, this.is_pinned = false, required this.img, this.ico = Icons.check}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
      },
      child: Container(
        height: 80,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(width: 10,),
            InkWell(
              onTap: (){showDialog(context: context,builder: (BuildContext context){return dialog(img: img, name: name);});
                // setState(){
                  // dialog(img: img, name: name);
                // }
                // Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(300),
                child: Image.asset(img, height: 75, width: 75, fit: BoxFit.cover,),
              ),
            ),
            SizedBox(width: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const second_page()));
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width-105,
                child: Column(children: [
                  SizedBox(height: 10,),
                  Row(children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width-190,
                        child: Text(name, textAlign: TextAlign.left, style: TextStyle(fontSize: 24),)),
                    Text(date, style: TextStyle(color: Colors.grey), textAlign: TextAlign.right,)
                  ],),
                  SizedBox(height: 5,),
                  Row(children: [
                    SizedBox(
                        width: MediaQuery.of(context).size.width-145,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          child: Row(children: [
                            Icon(ico),
                            Text(txt),
                      ]),
                        )
                    ),
                    if(is_pinned == true)
                      Icon(Icons.push_pin_rounded)
                  ],)
                ],),
              ),
            )
          ],
        ),
      ),
    );
  }
}
