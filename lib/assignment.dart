// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  final int deadline;
  final String task;

  Assignment({required this.deadline, required this.task});

  Color get colorIndicator {
    if (deadline < 5) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 175,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.only(left: 4, right: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: colorIndicator.withOpacity(.15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deadline',
              style: TextStyle(
                fontSize: 13,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  height: 9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.5),
                    ),
                    color: colorIndicator,
                  ),
                  child: Text(""),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.circle,
                      color: colorIndicator,
                      size: 10,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "$deadline days left",
                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 150,
              child: Text(
                task,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
