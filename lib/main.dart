// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import './header.dart';
import './calendar.dart';
import './profile.dart';
import './home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final _navigatorKey = GlobalKey<NavigatorState>();

  void _onItemTapped(int index) {
    if (index == _selectedIndex) {
      return;
    }

    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
        _navigatorKey.currentState?.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          ),
        );
        Future.delayed(Duration(milliseconds: 600), () {
          _navigatorKey.currentState?.pushReplacement(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => HomePage(
                userName: "Aarush",
                today: DateTime.now(),
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
                      unselectedColor: Colors.black,
                    ),

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
            ),
          );
        });
        break;
      case 1:
        _navigatorKey.currentState?.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          ),
        );
        Future.delayed(Duration(milliseconds: 600), () {
          _navigatorKey.currentState?.pushReplacement(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Calendar(),
            ),
          );
        });
        break;
      case 2:
        _navigatorKey.currentState?.pushReplacement(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
          ),
        );
        Future.delayed(Duration(milliseconds: 600), () {
          _navigatorKey.currentState?.pushReplacement(
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Profile(),
            ),
          );
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        key: _navigatorKey,
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (_) => HomePage(
              userName: "Aarush",
              today: DateTime.now(),
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
        },
      ),
    );
  }
}
