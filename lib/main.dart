// ignore_for_file: prefer_const_constructors, unused_field, unused_element

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import './header.dart';
import './navbar.dart';
import './current_events.dart';
import './calendar.dart';
import './profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final _pageOptions = [
    Text('Page 2'),
    Text('Page 3'),
  ];

  final _navigatorKey = GlobalKey<NavigatorState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 1:
        _navigatorKey.currentState?.push(
          MaterialPageRoute(builder: (_) => Calendar()),
        );
        break;
      case 2:
        _navigatorKey.currentState?.push(
          MaterialPageRoute(builder: (_) => Profile()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 99, 176, 249),
        body: Column(
          children: [
            Header(
              name: "Aarush",
              date: DateTime.now(),
            ),
            const CurrentEvents(),
          ],
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            /// Home
            SalomonBottomBarItem(
              unselectedColor: Colors.black,
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontFamily: 'Raleway'),
              ),
              selectedColor: Colors.black,
            ),

            /// Search
            SalomonBottomBarItem(
                icon: Icon(Icons.calendar_month),
                title: Text("Calendar"),
                selectedColor: Colors.black,
                unselectedColor: Colors.black),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.black,
              unselectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
