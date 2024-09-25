import 'package:flutter/material.dart';
import 'package:myapp/components/external_desc_box.dart';
import 'package:myapp/components/external_sliver.dart';
import 'package:myapp/components/mydrawer.dart';
import 'package:myapp/pages/home_page.dart';
class ExternalPage extends StatefulWidget {
  const ExternalPage({super.key});

  @override
  State<ExternalPage> createState() => _ExternalPageState();
}

class _ExternalPageState extends State<ExternalPage> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'RIGHT'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

 @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Mydrawer(),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  const ExternalSliver(
                    title: Text("Available Restraunts "),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Divider(
                          indent: 25,
                          endIndent: 25,
                          color: Color.fromARGB(255, 255, 249, 249),
                        ),
                        ExternalDescBox(),
                        SizedBox(height: 55),
                      ],
                    ),
                  ),], 
                  body: TabBarView(
                    controller: _tabController,
                    children: [
                     GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                                  Divider(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
                    Center(
                      child: Text("XYZ Restraunt",
                       style: TextStyle(fontSize: 30),
                       textAlign: TextAlign.center, ),
                    ),
                    
                    SizedBox(height: 10),
              Divider(
          color: Color.fromARGB(255, 255, 255, 255),
        )
                      ],
                    )
                  ),
              ],
            ),
          ),
        ),


                    ],
                  ),));
  }
}