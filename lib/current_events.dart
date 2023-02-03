// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './assignment.dart';

class CurrentEvents extends StatelessWidget {
  const CurrentEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "YOUR NEXT CLASS",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text(
                        "Expand",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                          child: Text(
                        "Map",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Align(
                        child: ElevatedButton(
                          style: ButtonStyle(),
                          onPressed: () {},
                          child: Text(
                            "Start Navigation",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "YOUR ASSIGNMENTS",
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 16.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text(
                        "Expand",
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 0,
                    child: Assignment(
                      deadline: 4,
                      task: 'The Basic of Typography II',
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Assignment(
                      deadline: 4,
                      task: 'Design Psychology',
                    ),
                  ),
                  Card(
                    elevation: 0,
                    child: Assignment(
                      deadline: 10,
                      task: 'Math',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
