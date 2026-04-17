import 'package:flutter/material.dart';

class LikeCounter extends StatefulWidget
{
  @override
  State<LikeCounter> createState() => _LikeCounterState();
}

class _LikeCounterState extends State<LikeCounter> {
    int _likes=0;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.all(20.00),
      child: Column(
        children: [
          Text('Likes: $_likes', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ElevatedButton(
            onPressed: (){

              setState(() {
                _likes++;
              });


              print(_likes);

              },
            child: Text('Like'),
          ),
        ],
      ),
    );
  }
}
