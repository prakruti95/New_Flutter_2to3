import 'package:flutter/material.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context)
  {
    return WillPopScope(
      onWillPop: ()async
      {
        return _showExitDialog(context);
      },
      child: Scaffold
        (
          appBar: AppBar(title: Text("Profile Screen"),),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container
              (
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row
                    (
                      children:
                      [
                          CircleAvatar(backgroundImage:AssetImage("assets/a.png"),radius: 40,),

                          Column
                            (
                              children:
                              [
                                //SizedBox(height: 20,width: 20,),
                                Text("A"),
                                Text("B"),
                              ],
                            )
                      ],
                    ),
                ),
                color: Colors.lightBlue,
                width: MediaQuery.of(context).size.width,
                height: 100,
            ),
          ),
        ),
    );
  }

  Future<bool> _showExitDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App?'),
        content: const Text('Do you really want to leave this screen?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    ) ?? false; // Handle dismissal by tapping outside
  }

}
