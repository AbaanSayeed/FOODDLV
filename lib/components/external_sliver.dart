/*import 'package:flutter/material.dart';
import 'package:myapp/pages/cart_page.dart';

class ExternalSliver extends StatelessWidget {
  final Widget child;
  final Widget title;
  const ExternalSliver({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
            },
            icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      title: Center(
          child: Text(
        "Aravali",
        style: TextStyle(
            fontFamily: "Sans serif",
            color: Colors.amber[300],
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      ),
      
      flexibleSpace: FlexibleSpaceBar(
        background: child,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: title,
        ),
        centerTitle: true,
        titlePadding: const EdgeInsets.only(top: 0, right: 0, left: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
import 'package:myapp/pages/cart_page.dart';

class ExternalSliver extends StatelessWidget {
  final Widget child;
  final Widget title;
  const ExternalSliver({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CartPage()));
            },
            icon: const Icon(Icons.shopping_cart))
      ],
      backgroundColor: const Color.fromARGB(255, 37, 36, 36),
      title: Center(
          child: Text(
        "Aravali",
        style: TextStyle(
            fontFamily: "Sans serif",
            color: Colors.amber[300],
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      ),
      
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            // Positioned background image here
            Positioned(
              top: 65, // Move the image slightly higher
              left: 0,
              right: 0,
              child: Image.asset(
                'images/banner.png',
                height: 130,
                width: 200, // Replace with your image path
                fit: BoxFit.contain,
              ),
            ),
            // Optional child widget (overlay content)
            Positioned.fill(
              child: child, // Your passed child widget
            ),
          ],
        ),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: title,
        ),
        centerTitle: true,
        titlePadding: const EdgeInsets.only(top: 0, right: 0, left: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
