
import 'package:flutter/material.dart';
import 'package:myapp/components/mybutton.dart';
import 'package:myapp/model/food.dart';
import 'package:myapp/model/restraunt.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;

  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  Map<Addon, bool> selectedAddons = {};

  @override
  void initState() {
    super.initState();
    for (Addon addon in widget.food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                widget.food.imagePath,
                height: 350,
                width: 350,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    "Image not available",
                    style: TextStyle(color: Colors.red),
                  );
                },
              ),
              const SizedBox(height: 20),
              Text(widget.food.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text(widget.food.description),
              Text('Rs ${widget.food.price.toStringAsFixed(2)}'),
              const SizedBox(height: 20),
              const Text('Add-ons:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Column(
                children: widget.food.availableAddons.map((addon) {
                  return CheckboxListTile(
                    title: Text(addon.name),
                    subtitle: Text('Rs ${addon.price.toStringAsFixed(2)}'),
                    value: selectedAddons[addon],
                    onChanged: (bool? value) {
                      setState(() {
                        selectedAddons[addon] = value ?? false;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              MyButton(
                onTap: () {
                  List<Addon> selected = selectedAddons.entries
                      .where((entry) => entry.value)
                      .map((entry) => entry.key)
                      .toList();

                  Provider.of<Restraunt>(context, listen: false).addToCart(widget.food, selected);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Added to cart!')),
                  );
                },
                text: 'Add To Cart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

