import 'package:flutter/material.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        appBar: AppBar(title: Text("Tops Technologies"),centerTitle: true,),
        body: SingleChildScrollView(
          child: Center
            (
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
              ),

    bottomNavigationBar: BottomNavigationBar
      (
        items:
        [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:'Home',
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label:'About',
              backgroundColor: Colors.green
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label:'Contact',
              backgroundColor: Colors.green
          ),

        ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5

    ),


    );

  }

  void _onItemTapped(int value)
  {
    setState(() {
      _selectedIndex = value;
    });
  }
}
