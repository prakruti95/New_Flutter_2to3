import 'package:flutter/material.dart';

class StaticList extends StatefulWidget
{
  const StaticList({super.key});

  @override
  State<StaticList> createState() => _StaticListState();
}

class _StaticListState extends State<StaticList>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Static List"),),
        body: ListView
          (
            children:
            [

              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies"),
              Image.asset("assets/tops.jpg",width: 350,height: 350,),
              Text("Tops Technologies")


            ],
          ),
      );
  }
}
