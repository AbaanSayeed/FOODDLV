import 'package:flutter/material.dart';
import 'package:myapp/model/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const MyFoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                  Text("Rs ${food.price}" ,
                      style: const TextStyle(color: Color.fromARGB(255, 149, 149, 149) ),),
                    Text(food.description),
                    
                    const SizedBox(height: 10)
                      ],
                    )
                  ),
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
        )
      ],
    );
  }
}
