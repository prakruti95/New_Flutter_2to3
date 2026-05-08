import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget
{
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _GridViewState();
}

class _GridViewState extends State<MyGridView>
{
  List lan =
  [
    "java",
    "php",
    "python",
    "c#",
    "java",
    "php",
    "python",
    "c#",
    "java",
    "php",
    "python",
    "c#",
    "java",
    "php",
    "python",
    "c#"
  ];

  List logo =
  [
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",
    "assets/a.png",

  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(),
        body: Center
          (
              child: GridView.builder
                (
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                    (
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                  itemBuilder: (BuildContext context, int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        color: Colors.green.shade500,
                        child: Center(
                            child: Text(lan[index],
                                style: TextStyle(fontSize: 20, color: Colors.white))),
                      ),
                    );
                  },
                  itemCount: lan.length,

                ),

          ),
      );
  }
}
