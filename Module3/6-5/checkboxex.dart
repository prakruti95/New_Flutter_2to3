import 'package:flutter/material.dart';

class CheckBoxEx extends StatefulWidget
{
  @override
  State<CheckBoxEx> createState() => _CheckBoxExState();
}

class _CheckBoxExState extends State<CheckBoxEx>
{
  var one=false;
  var two=false;
  var three=false;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar(title: Text("Checkbox and RadioButton"),),
        body: Center
          (
            child: Column
              (
                children:
                [
                  CheckboxListTile
                    (
                    value: one,
                    onChanged:(value)
                    {
                        setState(() {
                          this.one = value!;
                        });
                    },title: Text("Cricket"),),
                  CheckboxListTile
                    (
                    value: two,
                    onChanged:(value)
                    {
                      setState(() {
                        this.two = value!;
                      });

                    },title: Text("Football"),),
                  CheckboxListTile
                    (
                    value: three,
                    onChanged:(value)
                    {
                      setState(() {
                        this.three = value!;
                      });

                    },title: Text("Movies"),)
                ],
              ),
          ),
      );
  }
}
