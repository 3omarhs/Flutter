import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item{
  final String date;
  final String img;
  final String name;
  final String txt;
  final IconData ico;
  final bool is_pinned;

  Item ({required this.date , this.img = "lib/own proj`s/images/img.png", required this.name, required this.txt, required this.ico, this.is_pinned=false});
  // Item (this.date , this.imgPath, this.name, this.desc, this.ico, {this.is_pinned=false});
}

var Categories = ({
    /*'Category 1': [
    Item("17/12/2022",  "assets/p4.jpg",    "Omar Hassan",  "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, is_pinned: true,),
    Item("5/2/2022",    "assets/p2.jpg",    "Hassan Jamal", "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, is_pinned: true,),
    Item("2/1/2022",    "assets/p10.jpg",   "Ali Ahmad",    "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, is_pinned: true,),
    Item("9/5/2022",    "assets/p8.jpg",    "Hadi",         "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("1/11/2022",   "assets/p1.jpg",    "Abdullah",     "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("7/2/2022",    "assets/p2.jpg",    "John",         "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("6/6/2022",    "assets/p3.jpg",    "Malik",        "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("8/3/2022",    "assets/p7.jpg",    "Samar",        "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("2/3/2022",    "assets/p9.jpg",    "Alaa",         "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("7/10/2022",   "assets/p11.jpg",   "Huda",         "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    Item("1/8/2022",    "assets/p5.jpg",    "Masoud",       "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", Icons.check, ),
    ],
  */'Category 1': [
    Item(date: "17/12/2022",img: "assets/p4.jpg", name: "Omar Hassan", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: true,),
    Item(date: "5/2/2022",img: "assets/p2.jpg", name: "Hassan Jamal", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: true,),
    Item(date: "2/1/2022",img: "assets/p10.jpg", name: "Ali Ahmad", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: true,),
    Item(date: "9/5/2022",img: "assets/p8.jpg", name: "Hadi", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "1/11/2022",img: "assets/p1.jpg", name: "Abdullah", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "7/2/2022", name: "John", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "6/6/2022", name: "Malik", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "8/3/2022",img: "assets/p7.jpg", name: "Samar", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "2/3/2022",img: "assets/p9.jpg", name: "Alaa", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "7/10/2022", name: "Huda", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "1/8/2022",img: "assets/p5.jpg", name: "Masoud", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "17/12/2022",img: "assets/p4.jpg", name: "Omar Hassan", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "5/2/2022", name: "Hassan Jamal", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "2/1/2022", name: "Ali Ahmad", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "9/5/2022",img: "assets/p8.jpg", name: "Hadi", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "1/11/2022",img: "assets/p1.jpg", name: "Abdullah", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "7/2/2022",img: "assets/p2.jpg", name: "John", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "6/6/2022",img: "assets/p3.jpg", name: "Malik", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "8/3/2022",img: "assets/p7.jpg", name: "Samar", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "2/3/2022",img: "assets/p9.jpg", name: "Alaa", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "7/10/2022", name: "Huda", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "17/12/2022",img: "assets/p4.jpg", name: "Omar Hassan", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "5/2/2022",img: "assets/p2.jpg", name: "Hassan Jamal", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "2/1/2022", name: "Ali Ahmad", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "9/5/2022",img: "assets/p8.jpg", name: "Hadi", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, is_pinned: false,),
    Item(date: "1/11/2022", name: "Abdullah", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "7/2/2022",img: "assets/p2.jpg", name: "John", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "6/6/2022", name: "Malik", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "8/3/2022",img: "assets/p7.jpg", name: "Samar", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "2/3/2022", name: "Alaa", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
    Item(date: "7/10/2022",img: "assets/p11.jpg", name: "Huda", txt: "hi this is the text of whatsapp here is the message you can see if it tapped it wil open the chat..", ico: Icons.check, ),
  ],

  /*'Category 2':[
    Item('p1', 'assets/p1.jpg' ,'logo', 'Item No.1', 'Liam'),
    Item('p2', 'assets/p2.jpg' ,'moon', 'Item No.2', 'Emma'),
    Item('p3', 'assets/p3.jpg' ,'blue art', 'Item No.3', 'Oliver'),
    Item('p4', 'assets/p4.jpg' ,'hacking background', 'Item No.4', 'Amelia'),
    Item('p5', 'assets/p5.jpg' ,'technical BG', 'Item No.5', 'James'),
    Item('p6', 'assets/p6.jpg' ,'Artificial Intelligence BG', 'Item No.6', 'Sophia'),
    Item('p7', 'assets/p7.jpg' ,'Information technology BG' , 'Item No.7', 'Benjamin'),
    Item('p8', 'assets/p8.jpg' ,'Algorithm`s BG', 'Item No.8', 'Mia'),
    Item('p9', 'assets/p9.jpg' ,'sunset', 'Item No.9', 'Henry'),
    Item('p10', 'assets/p10.jpg','3omar.hs H4cking profile', 'Item No.10', 'Harper'),
    Item('p11', 'assets/p11.jpg','Windows 11 BG', 'Item No.11', 'Lucas'),
    Item('p12', 'assets/p12.jpg','3omar.hs mcu profile', 'Item No.12', 'Theodore'),
    Item('p13', 'assets/p5.jpg','technical BG', 'Item No.13', 'James'),
    Item('p14', 'assets/p2.jpg','moon', 'Item No.14', 'Emma'),
  ]*/
});

var Categ = ({'Category 1':'hiiiiiiii'});