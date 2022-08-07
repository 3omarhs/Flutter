import 'package:flutter/material.dart';

class profile_photo extends StatefulWidget {
  final String photo;
  final String name;
  final String my_profile;
  const profile_photo({Key? key, required this.photo, required this.name, this.my_profile = "f"}) : super(key: key);

  @override
  State<profile_photo> createState() => _profile_photoState();
}

class _profile_photoState extends State<profile_photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name.toString()),
        actions: [
          if(widget.my_profile.toString() == "t")
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share))
        ],
      ),
      body: Container(
          child: Center(child: Image.asset(widget.photo.toString(), fit: BoxFit.cover,))
      ),
    );
  }
}
