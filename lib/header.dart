// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Header extends StatelessWidget {
  final String name;
  final DateTime date;

  final List<String> abbreviations = [
    'Sun',
    'Mon',
    'Tues',
    'Wed',
    'Thu',
    'Fri',
    'Sat'
  ];

  Header({required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.5),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            '${DateFormat.EEEE().format(date).substring(0, 3)} ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text:
                            '${date.day} ${DateFormat.MMMM().format(date).substring(0, 3)}',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hi $name",
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Raleway',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
