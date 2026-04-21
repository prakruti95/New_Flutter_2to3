import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class FormEx extends StatefulWidget
{
  const FormEx({super.key});

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx>
{

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  late SharedPreferences sharedPreferences;
  var newuser;

  @override
  void initState()
  {
      checkvalue();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextFormField(controller:emailcontroller,decoration: InputDecoration(hintText: "Enter Email",border: OutlineInputBorder()),validator:(value)
                {
                    if(emailcontroller.text.isEmpty)
                    {
                      return "Please Enter Email";
                    }
                },),
                SizedBox(height: 10,),
                TextFormField(controller:passcontroller,decoration: InputDecoration(hintText: "Enter Password",border: OutlineInputBorder()),obscureText: true,
                    validator:(value) {
                      if (passcontroller.text.isEmpty) {
                        return "Please Enter Password";
                      }
                    }
                    ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: ()
                {
                    if(formkey.currentState!.validate())
                      {
                        String e = emailcontroller.text.toString();
                        String p = passcontroller.text.toString();

                        if(e=="a@gmail.com" && p=="1234")
                        {

                          sharedPreferences.setBool("tops",false);
                          sharedPreferences.setString("myemail",e);

                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Success")));
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                          //print("Success");
                        }
                        else
                        {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Fail")));

                          //print("Fail");
                        }

                      }



                }, child: Text("Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  checkvalue() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    newuser = sharedPreferences.getBool("tops")??true;
      if(newuser==false)
      {
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomePage()));

      }
  }
}
