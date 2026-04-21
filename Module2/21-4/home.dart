import 'package:flutter/material.dart';
import 'package:myapp123/formex.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  late SharedPreferences sharedPreferences;
  var myuser;
  @override
  void initState() {
    // TODO: implement initState
    checkvalue();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome : $myuser"),actions:
        [
          IconButton(onPressed: ()
          {
              sharedPreferences.setBool("tops", true);
              Navigator.push(context,MaterialPageRoute(builder: (context) => FormEx()));

          }, icon: Icon(Icons.logout))
        ],),
      );
  }

  checkvalue() async
  {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(()
    {

      myuser = sharedPreferences.getString("myemail")!;

    });

  }
}
