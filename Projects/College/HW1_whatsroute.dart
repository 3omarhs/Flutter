import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 5,
            child: Scaffold(
                appBar: AppBar(
                  bottom: const TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.camera_alt)),
                      Tab(text: 'CHATS'),
                      Tab(text: 'GROUPS'),
                      Tab(text: 'STATUS'),
                      Tab(text: 'CALLS'),
                    ],
                  ),
                  title: const Text('WhatsApp'),
                  backgroundColor: Colors.green,
                  actions: [
                    Icon(Icons.wifi),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.nightlight_round),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.more_vert),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                // bottomNavigationBar: new BottomNavigationBar(items: []),
                body: Center(child: Text("")))));
  }
}
