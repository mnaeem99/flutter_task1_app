import 'package:flutter/material.dart';
import 'package:flutter_task1_app/chatbot.dart';
import 'package:flutter_task1_app/flights.dart';
import 'package:flutter_task1_app/hotels.dart';
import 'package:flutter_task1_app/profile.dart';
import 'package:flutter_task1_app/travel.dart';

class Nav extends StatefulWidget {
  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Travel(),
    Flights(),
    Chatbot(),
    Hotels(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_travel,
            ),
            title: Text(
              'Travel',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            title: Text(
              'Flights',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            title: Text(
              'Chatbot',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            title: Text(
              'Hotels',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              'Profile',
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: Colors.blue[900],
      ),
    );
  }
}
