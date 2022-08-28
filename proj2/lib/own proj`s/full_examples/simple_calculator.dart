import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: My_HW4(),
    );
  }
}
class My_HW4 extends StatefulWidget {
  const My_HW4({Key? key}) : super(key: key);

  @override
  State<My_HW4> createState() => _My_HW4State();
}

class _My_HW4State extends State<My_HW4> {
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  final n3 = TextEditingController();

  SumNo(){
    setState(() {
      int a = int.parse(n1.text);
      int b = int.parse(n2.text);
      int c = a + b;
      n3.text = c.toString();
    });
  }

  SubNo(){
    setState(() {
      int a = int.parse(n1.text);
      int b = int.parse(n2.text);
      int c = a - b;
      n3.text = c.toString();
    });
  }

  MulNo(){
    setState(() {
      int a = int.parse(n1.text);
      int b = int.parse(n2.text);
      int c = a * b;
      n3.text = c.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: n1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "0",
                prefixIcon: Icon(Icons.star),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 3), borderRadius: BorderRadius.circular(30))
              ),
            ),

            SizedBox(height: 30,),

            TextField(
              controller: n2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "0",
                suffixIcon: Icon(Icons.star),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 3))
              ),
            ),

            SizedBox(height: 30,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(child: ElevatedButton(onPressed: SumNo, child: Text("+")), width: MediaQuery.of(context).size.width * (1/5),),
                SizedBox(child: ElevatedButton(onPressed: SubNo, child: Text("-")), width: MediaQuery.of(context).size.width * (1/5),),
                SizedBox(child: ElevatedButton(onPressed: MulNo, child: Text("*")), width: MediaQuery.of(context).size.width * (1/5),)
              ],
            ),

            SizedBox(height: 30,),

            TextField(
              controller: n3,
              enabled: false,
              decoration: InputDecoration(
                  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black, width: 3))
              ),
            )
          ],
        ),
      ),
    );
  }
}
