import 'package:flutter/material.dart';

class ExternalDescBox extends StatelessWidget {
  const ExternalDescBox({super.key});

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
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15,),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Centers content in each column
            children: [
              Text("Whats On Your Mind Today?", style: TextStyle(
                fontSize: 20
              ),)
            ],
          ),
        ],
      ),
    );
  }
}

