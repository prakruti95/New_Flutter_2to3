import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget
{
  String mydata;
  Screen2({required this.mydata });

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Welcome ${widget.mydata}"),),
        body: Center
          (
            child: Column
              (
                children:
                [

                ],
              ),
          ),
      );
  }

}
