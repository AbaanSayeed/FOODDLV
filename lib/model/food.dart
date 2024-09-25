
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodType category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodType {
    main, drinks, desserts  
   }

class Addon {
  final String name;
  final double price;

  Addon({
    required this.name,
    required this.price,
  });
}
