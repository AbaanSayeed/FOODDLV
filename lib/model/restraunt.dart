import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:myapp/model/cart_item.dart';
import 'package:myapp/model/food.dart';

class Restraunt extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Classic Burger",
      description: "Aloo Patty Filled With Cheese, Onions And Spicy Mayo",
      imagePath: "images/burgerimage.png",
      price: 275,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Extra Onion", price: 20),
        Addon(name: "Extra Patty", price: 120),
      ],
    ),
    Food(
      name: "Classic Chicken Burger",
      description: "Chicken Patty Filled With Cheese, Onions And Spicy Mayo",
      imagePath: "images/burgerimage.png",
      price: 295,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Extra Onion", price: 20),
        Addon(name: "Extra Patty", price: 140),
      ],
    ),
    Food(
      name: "Punjabi Chicken spicy Burger",
      description:
          "Juicy Chicken Patty, Marinated With Spices Overnight, Filled With Cheese, Onions And Spicy Mayo, Cooked Punjabi Style",
      imagePath: "images/burgerimage.png",
      price: 345,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Extra Onion", price: 20),
        Addon(name: "Extra Patty", price: 190),
      ],
    ),
    Food(
      name: "Paneer Burger",
      description: "Paneer Patty Filled With Cheese, Onions And Spicy Mayo",
      imagePath: "images/burgerimage.png",
      price: 295,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Extra Onion", price: 20),
        Addon(name: "Extra Patty", price: 140),
      ],
    ),
    Food(
      name: "American Smash Burger",
      description:
          "Juicy Mutton Kebab Patty, American Smash-style Burger, Filled With Cheese, Onions And Spicy Mayo",
      imagePath: "images/burgerimage.png",
      price: 425,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 20),
        Addon(name: "Extra Onion", price: 20),
        Addon(name: "Extra Patty", price: 220),
      ],
    ),
    Food(
      name: "Mutton Lucknowi Biryani",
      description:
          "Flavorful Tender Mutton Pieces Marinated For 2 Days, served With Slow Cooked Biryani Rice in a Lucknowi Handi",
      imagePath: "images/biryaniimg.png",
      price: 340,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 90),
        Addon(name: "Poached eggs", price: 60),
        Addon(name: "Extra Raita", price: 20),
      ],
    ),
    Food(
      name: "Chicken Lucknowi Biryani",
      description:
          "Flavorful Chicken Pieces Marinated For 2 Days, served With Slow Cooked Biryani Rice In a Lucknowi Handi",
      imagePath: "images/biryaniimg.png",
      price: 320,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 80),
        Addon(name: "Poached eggs", price: 60),
        Addon(name: "Extra Raita", price: 20),
      ],
    ),
    Food(
      name: "Mutton Hyderabadi Biryani",
      description:
          "Flavorful Tender Mutton Pieces Marinated For 2 Days, served With Slow Cooked Dum-Style Biryani Rice in a Handi",
      imagePath: "images/biryaniimg.png",
      price: 375,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 90),
        Addon(name: "Poached eggs", price: 60),
        Addon(name: "Extra Raita", price: 20),
      ],
    ),
    Food(
      name: "Chicken Hyderabadi Biryani",
      description:
          "Flavorful Chicken Pieces Marinated For 2 Days, served With Slow Cooked Dum-Style Biryani Rice in a Handi",
      imagePath: "images/biryaniimg.png",
      price: 345,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 80),
        Addon(name: "Poached eggs", price: 60),
        Addon(name: "Extra Raita", price: 20),
      ],
    ),
    Food(
      name: "Biryani Value Meal",
      description: "Chicken Biryani Served with a Coke",
      imagePath: "images/biryaniimg.png",
      price: 290,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Pieces", price: 70),
        Addon(name: "Poached eggs", price: 60),
        Addon(name: "Extra Raita", price: 20),
      ],
    ),
    Food(
      name: "Wood-Fire Veg Pizza",
      description:
          "Pizza Cooked in a Wood-Fire Oven, with a Variety of Toppings ",
      imagePath: "images/pizzaimg.png",
      price: 350,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 40),
        Addon(name: "Garlic Bread", price: 120),
        Addon(name: "Extra Toppings", price: 20),
        Addon(name: "Cheese Crust", price: 60),
        Addon(name: "Thick Crust", price: 60),
      ],
    ),
    Food(
      name: "Wood-Fire Chicken Pizza",
      description:
          "Pizza Cooked in a Wood-Fire Oven, Topped with a Generous Amount of Chicken ",
      imagePath: "images/pizzaimg.png",
      price: 380,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 40),
        Addon(name: "Garlic Bread", price: 120),
        Addon(name: "Extra Toppings", price: 70),
        Addon(name: "Cheese Crust", price: 60),
        Addon(name: "Thick Crust", price: 60),
      ],
    ),
    Food(
      name: "Pizza Value Meal",
      description: "Veg Pizza Served with a Coke ",
      imagePath: "images/pizzaimg.png",
      price: 310,
      category: FoodType.main,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 40),
        Addon(name: "Garlic Bread", price: 120),
        Addon(name: "Extra Toppings", price: 20),
        Addon(name: "Cheese Crust", price: 60),
        Addon(name: "Thick Crust", price: 60),
      ],
    ),
    Food(
      name: "Choco Lava",
      description: "Hot and sweet",
      imagePath: "images/chocolava.png",
      price: 130,
      category: FoodType.desserts,
      availableAddons: [
        Addon(name: "Double", price: 40),
      ],
    ),
    Food(
      name: "Ice Cream",
      description: "Flavours of your choice ",
      imagePath: "images/iceCream.png",
      price: 130,
      category: FoodType.desserts,
      availableAddons: [
        Addon(name: "Double", price: 40),
      ],
    ),
    Food(
      name: "Tiramasu",
      description: "Three layered Tiramasu",
      imagePath: "images/dessertsimg.png",
      price: 130,
      category: FoodType.desserts,
      availableAddons: [
        Addon(name: "chocolate syrup dressing", price: 40),
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cartItems;

  final List<CartItem> _cartItems = [];

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cartItems.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          const ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      CartItem newCartItem =
          CartItem(food: food, selectedAddons: selectedAddons, quantity: 1);
      _cartItems.add(newCartItem);
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartItemIndex = cartItem.quantity;
    if (cartItemIndex > 1) {
      cartItem.quantity--;
    }  else if(cartItemIndex == 1)  {
      _cartItems.clear();
    }
    notifyListeners();
  }

  double getTotalCartPrice() {
    double totalPrice = 0.0;

    for (CartItem cartItem in _cartItems) {
      totalPrice += cartItem.totalPrice; // Now includes the add-on price
    }

    return totalPrice;
  }

  int getTotalItemsInCart() {
    int totalItems = 0;
    for (CartItem cartItem in _cartItems) {
      totalItems += cartItem.quantity;
    }
    return totalItems;
  }

  void clearCart() {
    _cartItems.clear();
    notifyListeners();
  }
}
