import 'package:myapp/model/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantity = 1,
  });

  double get totalPrice {
    // Base price of the food item
    double total = food.price;
    
    // Add the prices of all selected add-ons
    for (Addon addon in selectedAddons) {
      total += addon.price;
    }

    // Multiply by the quantity to get the total price for this CartItem
    return total * quantity;
  }
}
