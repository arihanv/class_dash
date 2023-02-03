import 'package:flutter/material.dart';

class CurrentEvents extends StatelessWidget {
  const CurrentEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(4),
            topLeft: Radius.circular(4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Your Next Class",
                    style: TextStyle(fontFamily: 'Arial', fontSize: 20),
                  ),
                  Text(
                    "Expand",
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 15,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
