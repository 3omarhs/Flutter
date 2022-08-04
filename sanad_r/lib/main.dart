import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sanad_r/taftesh.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sanad Registration',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF023f54), //Color(0x2c546c),
      /*appBar: AppBar(
        // title: Text(widget.title),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.green, Colors.red], ),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
          ),
        ),
        toolbarHeight: 100,
      ),*/
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("images/1.jpg", width: 190),
              Container(
                width: double.infinity,

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [

                          SizedBox(height: 33,),
                          Text(
                            'الرقم الوطني',
                            style: TextStyle(fontFamily: 'NotoKufiArabic', color: Color(0xFFf8ffff), fontSize: 19, fontWeight: FontWeight.bold), textDirection: TextDirection.rtl,
                          ),

                          SizedBox(height: 12,),

                          Container(
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                // contentPadding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                                filled: true,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.white,
                              ),
                              keyboardType: TextInputType.number,
                              autofocus: false,
                            ),
                          ),

                          SizedBox(height: 22,),


                          Text(
                            'كلمة السر',
                            style: TextStyle(fontFamily: 'NotoKufiArabic', color: Color(0xFFf8ffff), fontSize: 19, fontWeight: FontWeight.bold), textDirection: TextDirection.rtl,
                          ),

                          SizedBox(height: 10,),

                          Container(
                            height: 50,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                fillColor: Colors.white,
                              ),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                            ),
                          ),

                          // SizedBox(height: 47,),
                          SizedBox(height: 37,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(17)
                ),
                alignment: Alignment.center,
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, child: Text("تسجيل دخول", style: TextStyle(fontFamily: 'NotoKufiArabic', fontSize: 20, color: Color(0xFF023f54)),), ),
                  ],
                ),
              ),


              SizedBox(height: 10,),


              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17)
                ),
                alignment: Alignment.center,
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(onPressed: (){}, child: Text("مستخدم جديد", style: TextStyle(fontFamily: 'NotoKufiArabic', fontSize: 20, color: Color(0xFF023f54)),), ),
                  ],
                ),
              ),

              SizedBox(height: 17,),

              TextButton(onPressed: (){}, child: Text("نسيت كلمة السر", style: TextStyle(fontFamily: 'NotoKufiArabic', color: Color(0xFFf8ffff), fontSize: 16),)),

              SizedBox(height: 3,),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          // child: Text("تفتيش", style: TextStyle(color: Colors.white, fontSize: 20),),
                          child: Image.asset("images/5.png", height: 75,),
                            onPressed: (){
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Tafteesh()));
                            });
                            },
                        ),
                        TextButton(
                          // child: Text("الهوية الصحية", style: TextStyle(color: Colors.white, fontSize: 20),),
                          child: Image.asset("images/4.png", height: 75,),
                          onPressed: (){},
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            )

            ],
          ),
        ),
      ),
    );
  }
}
