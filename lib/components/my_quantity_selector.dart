import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50.0),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: quantity > 1 ? onDecrement : onDecrement, // Disable decrement if quantity is 1
            child: Icon(
              Icons.remove,
              color: quantity > 1 ? Colors.black : Colors.grey, // Change color to indicate disable
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: Text(
                quantity.toString(),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: const Icon(
              Icons.add,
              color: Colors.black,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
