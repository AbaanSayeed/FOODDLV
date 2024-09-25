import 'package:flutter/material.dart';

class MyDescBox extends StatelessWidget {
  const MyDescBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 63, 63, 63),
        border: Border.all(
          color: const Color.fromARGB(255, 63, 63, 63),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Delivery Fee Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Centers content in each column
            children: [
              Text(
                "@39rs",
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Makes the primary text bold
                ),
              ),
              SizedBox(height: 5), // Adds some space between the text items
              Text(
                "Delivery Fee",
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 167, 167),
                ),
              ),
            ],
          ),
          // Delivery Time Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Centers content in each column
            children: [
              Text(
                "15-20 Mins",
                style: TextStyle(
                  fontWeight: FontWeight.bold, // Makes the primary text bold
                ),
              ),
              SizedBox(height: 5), // Adds some space between the text items
              Text(
                "Delivery Time",
                style: TextStyle(
                  color: Color.fromARGB(255, 168, 167, 167),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

