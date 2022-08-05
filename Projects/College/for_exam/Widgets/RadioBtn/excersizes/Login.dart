import 'package:flutter/material.dart';
import 'package:proj2/College/for_exam/Widgets/Buttons/RaisedBtn.dart';
import 'package:proj2/College/for_exam/Widgets/TextBoxes/TextForm.dart';
import 'package:proj2/College/for_exam/Widgets/TextBoxes/TextFormPass.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: formKey,
            child: SingleChildScrollView(

              child: Column(children: [
                TextForm(cnt: t1, label: "name", validate:  (value){
                  if(value.toString().isEmpty){
                    return "name is empty";
                  }
                  else
                    return null;
                }),
                SizedBox(height: 20,),
                TextFormPass(cnt: t2, label: "Password", validate: (value){
                  if(value.toString().isEmpty){
                    return "password is empty";
                }
                  else
                    return null;
    }),
                RaisedBtn(bgColor: Colors.blue, foreColor: Colors.white, label: "Login", onPressed: (){if (formKey.currentState!.validate()){Navigator.pop(context);} }),
                RaisedBtn(bgColor: Colors.red, foreColor: Colors.white, label: "back", onPressed: (){Navigator.pop(context);}),
              ],),
            )
        ),
      ),
    );
  }
}
