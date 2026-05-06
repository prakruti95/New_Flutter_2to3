import 'package:flutter/material.dart';

class Radiobuttonex extends StatefulWidget
{
  @override
  State<Radiobuttonex> createState() => _RadiobuttonexState();
}
enum BestTutorSite
{
    w3schools,
    tutorialspoint
}
class _RadiobuttonexState extends State<Radiobuttonex>
{
  BestTutorSite _site = BestTutorSite.w3schools;
  var one = false;
  var two = false;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("RadioButton"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  ListTile
                    (
                      title: Text("W3school"),
                      leading: Radio
                        (
                          value: BestTutorSite.w3schools,
                          groupValue: _site,
                          onChanged: (value)
                          {
                             setState(()
                             {
                               _site=value!;

                             });
                          },


                          ),
                    ) ,
                  ListTile
                    (
                    title: Text("Tutorialspoint"),
                    leading: Radio
                      (
                        value: BestTutorSite.tutorialspoint,
                        groupValue: _site,
                        onChanged: (value)
                        {
                          setState(()
                          {
                            _site=value!;
                          });
                        }),
                  )
                ],
              ),
          ),
      );
  }
}
