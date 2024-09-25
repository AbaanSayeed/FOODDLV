import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("Your Location"),
              content: const TextField(
                decoration: InputDecoration(hintText: "Search Location..."),
              ),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel"),
                ),
                MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Save"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Text("Deliver Now",
            style: TextStyle(
                fontSize: 16,
                fontFamily: "Sans serif",
                color: Colors.amber[300],
                fontWeight: FontWeight.bold)),
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: GestureDetector(
              onTap: () {
                openLocationSearchBox(context);
              },
              child: const Text(
                "FBD",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: GestureDetector(
                onTap: () {
                  openLocationSearchBox(context);
                },
                child: const Icon(Icons.keyboard_arrow_down_rounded)),
          )
        ],
      )
    ]);
  }
}
