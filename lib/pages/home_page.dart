import 'package:flutter/material.dart';
import 'package:myapp/components/my_current_location.dart';
import 'package:myapp/components/my_desc_box.dart';
import 'package:myapp/components/my_food_tile.dart';
import 'package:myapp/components/my_tab_bar.dart';
import 'package:myapp/components/mydrawer.dart';
import 'package:myapp/components/sliver_app_bar.dart';
import 'package:myapp/model/food.dart';
import 'package:myapp/model/restraunt.dart';
import 'package:myapp/pages/food_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: FoodType.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List<Food> _filterMenuByType(FoodType type, List<Food> menu) {
    return menu.where((food) => food.category == type).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Mydrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            title: MyTabBar(tabController: _tabController),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Color.fromARGB(255, 255, 249, 249),
                ),
                MyCurrentLocation(),
                MyDescBox(),
                SizedBox(height: 55),
              ],
            ),
          ),
        ],
        body: Consumer<Restraunt>(
          builder: (context, restraunt, child) => TabBarView(
            controller: _tabController,
            children: FoodType.values.map((category) {
              List<Food> foodInThisType = _filterMenuByType(category, restraunt.menu);
              return ListView.builder(
                itemCount: foodInThisType.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return MyFoodTile(
                    food: foodInThisType[index],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodPage(food: foodInThisType[index]),
                        ),
                      );
                    },
                  );
                },
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
