import 'package:althafapp/modles/food.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {

  final TabController tabController;
  const Tabbar({super.key,
  required this.tabController,
  });

  List<Tab> _buildcate(){
    return FoodCatetory.values.map((category){
      return Tab(
        text: category.toString().split('.').last,
      );
  }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildcate(),
      ),
    );
  }
}