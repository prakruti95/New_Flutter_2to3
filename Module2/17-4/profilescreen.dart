import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            Container
              (
                color: Colors.blue.shade50,
                padding: EdgeInsets.all(16.00),
                child: Row
                  (
                    children:
                    [
                      CircleAvatar(radius: 40,backgroundImage: AssetImage("tops.jpg"),),
                      SizedBox(width: 16),
                      Column
                        (
                          children:
                          [
                              Text("Tops Technologies",style: TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold),),
                              Text("Rajkot",style: TextStyle(fontSize: 15.00,fontWeight: FontWeight.w200),)
                          ],
                        ),


                    ],
                  ),
              ),
              SizedBox(height: 10,),
            Container
              (
              color: Colors.blue.shade50,
              padding: EdgeInsets.all(16.00),
              child: Row
                (
                children:
                [
                  CircleAvatar(radius: 40,backgroundImage: AssetImage("tops.jpg"),),
                  SizedBox(width: 16),
                  Column
                    (
                    children:
                    [
                      Text("Tops Technologies",style: TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold),),
                      Text("Rajkot",style: TextStyle(fontSize: 15.00,fontWeight: FontWeight.w200),)
                    ],
                  ),


                ],
              ),
            ),

            SizedBox(height: 10,),

            Container
              (
              color: Colors.blue.shade50,
              padding: EdgeInsets.all(16.00),
              child: Row
                (
                children:
                [
                  CircleAvatar(radius: 40,backgroundImage: AssetImage("tops.jpg"),),
                  SizedBox(width: 16),
                  Column
                    (
                    children:
                    [
                      Text("Tops Technologies",style: TextStyle(fontSize: 20.00,fontWeight: FontWeight.bold),),
                      Text("Rajkot",style: TextStyle(fontSize: 15.00,fontWeight: FontWeight.w200),)
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      );
  }

}