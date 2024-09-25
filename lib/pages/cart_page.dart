import 'package:flutter/material.dart';
import 'package:myapp/components/my_cart_tile.dart';
import 'package:myapp/components/mybutton.dart';
import 'package:myapp/model/restraunt.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restraunt>(
      builder: (context, restraunt, child) {
        final userCart = restraunt.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
          ),
          body: Column(
            children: [
              // Display each cart item using MyCartTile
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (context, index) {
                    return MyCartTile(cartItem: userCart[index]);
                  },
                ),
              ),
              // Display total price at the bottom
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Total: Rs ${restraunt.getTotalCartPrice().toStringAsFixed(2)}', // Total cart price including add-ons
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MyButton(
                  onTap: () {
                    Provider.of<Restraunt>(context, listen: false).clearCart();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Order Placed!')),
                    );
                  },
                  text: "Place Order"),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        );
      },
    );
  }
}
