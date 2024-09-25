import 'package:flutter/material.dart';
import 'package:myapp/model/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildTypeTabs() {
    return FoodType.values.map((type) {
      return Tab(
        text: type.toString().split('.').last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding if needed
      color: const Color.fromARGB(255, 0, 0, 0), // Optional background color
      child: TabBar(
        controller: tabController,
        tabs: _buildTypeTabs(),
        // Styling options
        indicatorColor: Colors.blue, // Color for the selected tab underline
        labelColor: const Color.fromARGB(255, 255, 255, 255), // Color for selected tab's text/icon
        unselectedLabelColor: Colors.grey, // Color for unselected tab's text/icon
      ),
    );
  }
}

