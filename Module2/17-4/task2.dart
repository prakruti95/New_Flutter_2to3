import 'package:flutter/material.dart';


class MoodToggle extends StatefulWidget
{
  @override
  _MoodToggleState createState() => _MoodToggleState();
}

class _MoodToggleState extends State<MoodToggle>
{
  bool _isHappy = true;



  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        Text('Current Mood:', style: TextStyle(fontSize: 18)),

        Text
          (
            _isHappy ? '😊 Happy' : '😔 Sad',
          style: TextStyle(fontSize: 24),
          ),
        TextButton
          (
          onPressed: ()
          {

              changemood();

          },
          child: Text('Change Mood'),
          ),
      ],
    );
  }

  void changemood()
  {
    setState(() {
      _isHappy = !_isHappy;
    });
  }
}
