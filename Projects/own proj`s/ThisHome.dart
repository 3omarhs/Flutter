import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Widgets/Lists/category_1.dart';
import 'package:proj2/own%20proj%60s/Widgets/Lists/my_tile_list.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/dialog.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_categ.dart';
import 'package:proj2/own%20proj%60s/Widgets/Lists/topBar.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_categ_3.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_categ_4.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/item_in_categ_6.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/my_tile.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/whats_contact_in_home_page.dart';

final Color? list_color = Colors.purple[200];
final Color border_color = Colors.purpleAccent;
final Color item_border_color = Colors.deepPurple;

class ThisHome extends StatefulWidget {


  const ThisHome({Key? key}) : super(key: key);
  @override
  State<ThisHome> createState() => _ThisHomeState();
}

class _ThisHomeState extends State<ThisHome> {
  press(String image){
    String _img = image;
    setState(() {
      // showDialog(context: context,builder: (BuildContext context){return dialog();});
    });
  }

  @override
  Widget build(BuildContext context) {
    // String img = Categories_1[0][0].values.elementAt(0)[0].toString();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            topBar(),
            // category_1(title: "Category 1", items: [item_in_categ_4(img: "assets/p1.jpg"), item_in_categ_6(img: "assets/p4.jpg"), item_in_categ_6(img: "assets/p5.jpg"),  item_in_categ_6(img: "assets/p1.jpg"), item_in_categ_6(img: "assets/p2.jpg")]),
            // category_1(title: "Category 2", items: [item_in_categ_6(img: "assets/p5.jpg"), item_in_categ_6(img: "assets/p6.jpg"), item_in_categ_6(img: "assets/p3.jpg"), item_in_categ_6(img: "assets/p3.jpg"), item_in_categ_6(img: "assets/p4.jpg")]),
            // category_1(title: "Category 3", items: [item_in_categ_3(img: "assets/p8.jpg"), item_in_categ_6(img: "assets/p3.jpg"), item_in_categ_6(img: "assets/p2.jpg"), item_in_categ_6(img: "assets/p6.jpg"), item_in_categ_6(img: "assets/p4.jpg")]),
            // category_1(title: "Category 4", items: [item_in_categ_6(img: "assets/p6.jpg"), item_in_categ_6(img: "assets/p2.jpg"), item_in_categ_6(img: "assets/p5.jpg"), item_in_categ_6(img: "assets/p6.jpg"), item_in_categ_6(img: "assets/p4.jpg")]),
            // category_1(title: "Category 5", items: [item_in_categ(img: "assets/p4.jpg"), item_in_categ_6(img: "assets/p5.jpg"), item_in_categ_6(img: "assets/p2.jpg"), item_in_categ_6(img: "assets/p6.jpg"), item_in_categ_6(img: "assets/p4.jpg")]),
            category_1(title: "Category 6", items: [item_in_categ_6(img: "assets/p3.jpg"), item_in_categ_6(img: "assets/p8.jpg"), item_in_categ_6(img: "assets/p4.jpg"), item_in_categ_6(img: "assets/p7.jpg"), item_in_categ_6(img: "assets/p2.jpg")]),
            SizedBox(height: 20,),
            // whats_contact_in_home_page(date: "17/12/2022",img: "assets/p4.jpg", name: "Omar Hassan", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: true,),
            // my_tile(img: "assets/p4.jpg", name: "Omar Hassan", message_data: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, date: "17/10/2022", pinned: true),
            my_tile_list(category: "Category 1"),
          ],
        ),
      ),
    );
  }
}
