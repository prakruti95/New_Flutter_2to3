import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  @override
  CounterState createState() => CounterState();
}

class CounterState extends State<CounterApp>
{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: ElevatedButton(onPressed: ()
        {
          count++;
          print(count);
        }, child: Text("Click Me")),
      ),
    );
  }
}
