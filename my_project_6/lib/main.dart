import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

String? date;

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  DateTime? selected_date;
  void _datePicker() {
      showDatePicker(
        context: context,
        initialDate: DateTime.utc(2000, 1, 1),  // Default Date...
        firstDate: DateTime(1900),
        lastDate: DateTime.now()).then((value) {
          if(value == null){}
          setState((){
            selected_date = value;
            if(selected_date != null) {
              //date = DateTime.now().difference(selected_date!).toString();
              date = (DateTime.now().year - selected_date!.year).toString() + "years, " + (DateTime.now().month - selected_date!.month).toString() + "months, " + (DateTime.now().day - selected_date!.day).toString() + "days.";
              //Duration s_date = DateTime.now().difference(selected_date!);
              //date = s_date.inDays.toString();
            }
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You are born in:',
            ),
            if(selected_date != null)
              Text('$date',style: Theme.of(context).textTheme.headline4,)
            else
            Text('tap + to select..',style: Theme.of(context).textTheme.headline4,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _datePicker,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
