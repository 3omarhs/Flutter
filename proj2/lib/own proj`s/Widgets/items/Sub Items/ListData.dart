import 'package:flutter/material.dart';
import 'package:proj2/own%20proj%60s/Datasets/Dataset_whats.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/my_tile.dart';
import 'package:proj2/own%20proj%60s/Widgets/items/whats_contact_in_home_page.dart';

class ListData extends StatelessWidget {
  final Item item;
  final List index;
  const ListData({Key? key, required this.item, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return whats_contact_in_home_page(
      date: item.date,
      img: item.img,
      name: item.name,
      txt: item.txt,
      ico: item.ico,
      is_pinned: item.is_pinned,
    );
    // return my_tile(
    //   date: item.date,
    //   img: item.img,
    //   name: item.name,
    //   message_data: item.txt,
    //   ico: item.ico,
    //   pinned: item.is_pinned,
    // );


      /*whats_contact_in_home_page(
      date: "17/12/2022",
      img: "assets/p4.jpg",
      name: "Omar Hassan",
      txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..",
      ico: Icons.check,
      is_pinned: true,
    );*/
    /*ListTile(
      leading: Text(item.imgPath),
      title: Text(item.name),
      subtitle: Text(item.desc),
    );*/
  }
}
