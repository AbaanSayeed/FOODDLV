import 'package:flutter/material.dart';
import 'package:myapp/components/my_quantity_selector.dart';
import 'package:myapp/model/cart_item.dart';
import 'package:myapp/model/restraunt.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restraunt>(
      builder: (context, restraunt, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Display food details
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartItem.food.name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Rs ${cartItem.totalPrice.toStringAsFixed(2)}', // Includes add-ons in price
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                // Display add-ons if any
                if (cartItem.selectedAddons.isNotEmpty)
                  Text(
                    'Add-ons: ${cartItem.selectedAddons.map((addon) => addon.name).join(', ')}',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
              ],
            ),
            // Quantity selector
            QuantitySelector(
              quantity: cartItem.quantity,
              onIncrement: () {
                restraunt.addToCart(cartItem.food, cartItem.selectedAddons);
              },
              onDecrement: () {
                restraunt.removeFromCart(cartItem);
              },
            ),
          ],
        ),
      ),
    );
  }
}
