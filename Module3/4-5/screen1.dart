import 'package:flutter/material.dart';
import 'package:mythemeexample/screen2.dart';

class Screen1 extends StatefulWidget
{
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1>
{
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Screen1"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                    TextField(controller:name,decoration: InputDecoration(hintText: "Enter Name"),),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: ()
                    {
                      String data = name.text.toString();
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Screen2(mydata:data)));
                    }, child: Text("Submit"))

                ],
              ),
          ),
      );
  }
}
