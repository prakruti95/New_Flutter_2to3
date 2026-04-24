import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  List iconlist = [
    "assets/f1.png",
    "assets/j1.png",
    "assets/p1.png",
    "assets/t1.png",
    "assets/f1.png",
    "assets/j1.png",
    "assets/p1.png",
    "assets/t1.png",
    "assets/f1.png",
    "assets/j1.png",
    "assets/p1.png",
    "assets/t1.png",
  ];
  List titlelist = [
    "Flutter",
    "Java",
    "Php",
    "Testing",
    "Flutter",
    "Java",
    "Php",
    "Testing",
    "Flutter",
    "Java",
    "Php",
    "Testing",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic List")),
      body: ListView.builder(
        //how to build items means it will follow your design
        itemBuilder: (BuildContext context, int index) {
          // return ListTile
          //   (
          //
          //     leading:Image.asset(iconlist[index],width: 250,height: 250,),
          //     title:Text(titlelist[index],style: TextStyle(fontSize: 20.00),)
          //   );
          return Padding(
            padding: const EdgeInsets.all(28.0),
            child: Card(
              color: Colors.lightBlue,
              child: Row(
                children: [
                  SizedBox(width: 30),
                  CircleAvatar(
                    backgroundImage: AssetImage(iconlist[index]),
                    radius: 30,
                  ),
                  //Image.asset(,width: 100,height: 100),
                  SizedBox(width: 20),
                  Text(titlelist[index], style: TextStyle(fontSize: 20.00)),
                ],
              ),
            ),
          );
        },
        //count for list
        itemCount: titlelist.length,
      ),
    );
  }
}
