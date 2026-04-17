import 'package:flutter/material.dart';
import 'package:myapp123/profilescreen.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to Tops"),
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
      ),
      body: Column(

        children: [
          Center
            (
            child: Text(
              "Company List",
              style: TextStyle(
                fontSize: 20.00,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ProfileScreen()
        ],
      ),
    );
  }
}
