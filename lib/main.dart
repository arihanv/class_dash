// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './header.dart';
import 'current_events.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Header(
              name: "John",
              date: DateTime.now(),
            ),
            const CurrentEvents(),
          ],
        ),
      ),
    );
  }
}
