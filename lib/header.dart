// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String name;
  final DateTime date;

  Header({required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.5),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${date.weekday} ${date.day} ${date.month}",
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
