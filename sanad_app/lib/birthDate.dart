import 'package:flutter/material.dart';
import 'package:sanad_app/green.dart';
// Color(0xFF4cb253),
class BirthDate extends StatelessWidget {
  const BirthDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF023f54),
      appBar: AppBar(
        backgroundColor: Color(0xFF023f54),
        brightness: Brightness.dark,
        elevation: 0,
      ),
      body: Container(
        height: 500,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            SizedBox(
              child: Container(
                child: Text("أدخل تاريخ ميلادك", style: TextStyle(fontSize: 18, color: Colors.white),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: SizedBox(
                width: 300,
                child: Row(

                  children: [
                  Expanded(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fillColor: Colors.white,
                        hintStyle: TextStyle(fontSize: 18, ),
                        hintText: "السنة",
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),

                    Expanded(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.white,
                          hintStyle: TextStyle(fontSize: 18, ),
                          hintText: "الشهر",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),

                    Expanded(
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          fillColor: Colors.white,
                          hintStyle: TextStyle(fontSize: 18, ),
                          hintText: "اليوم",
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 45.0),
              child: SizedBox(
                width: 300,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(23)),
                  alignment: Alignment.center,
                  width: 170,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Green()));
                        },
                        child: Text(
                          "متابعة",
                          style:
                          TextStyle(fontSize: 18, color: Color(0xFF023f54)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
