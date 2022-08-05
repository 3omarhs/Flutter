import 'package:flutter/material.dart';


// i cant add IconButton in the TextField..
// keyboardType: TextInputType.visiblePassword,


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final t1 = TextEditingController();
  final t2 = TextEditingController();
  final t3 = TextEditingController();

  SumNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      int c = a + b;
      t3.text = c.toString();
    });
  }

  MulNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      int c = a * b;
      t3.text = c.toString();
    });
  }

  SubNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      int c = a - b;
      t3.text = c.toString();
    });
  }

  DivNo(){
    setState(() {
      int a = int.parse(t1.text);
      int b = int.parse(t2.text);
      double c = a / b;
      t3.text = c.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: t1,
              style: TextStyle(color: Colors.red, fontSize: 30),
              decoration: InputDecoration(
                fillColor: Colors.amber,
                filled: true, // without it the fillColor isnt working..
                hintText: "0",
                hintStyle: TextStyle(color: Colors.white),
                labelText: "first number",
                // labelStyle: ,
                prefixIcon: Icon(Icons.face, color: Colors.white,),
                // suffixIcon: ,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 10),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 15),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              keyboardType: TextInputType.number,
              obscureText: true,
            ),  // controller is to take the value of the text..القيمة المختزنة في المتغير على شكل نص
            SizedBox(
              height: 10,
            ),

            TextField(
                controller: t2,
            ),
            SizedBox(
              height: 10,
            ),

            SizedBox(
              child: ElevatedButton(
                  onPressed: SumNo, child: Text("Sum")
              ),
              width: 90,
            ),
            SizedBox(
              height: 10,
            ),

            TextField(controller: t3,),
          ],
        ),
      )
    );
  }
}
