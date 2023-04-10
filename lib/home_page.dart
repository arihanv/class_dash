// ignore_for_file: prefer_const_constructors, unused_field, unused_element

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import './header.dart';
import './navbar.dart';
import './current_events.dart';
import './calendar.dart';
import './profile.dart';

class HomePage extends StatelessWidget {
  final String userName;
  final DateTime today;

  final SalomonBottomBar bottomNavigationBar;

  HomePage(
      {required this.userName,
      required this.today,
      required this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 202, 244),
      body: Column(
        children: [
          Header(
            name: userName,
            date: today,
          ),
          const CurrentEvents(),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
