import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/food_detail/food_detail_view.dart';
import 'package:flutter_application_empty/src/home/home_controller.dart';
import 'package:flutter_application_empty/widget/food_tile.dart';

class FoodMenus extends StatelessWidget {
  final HomeController controller;
  const FoodMenus({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    void onNavigateToFoodDetail(int index) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailView(
              food: controller.foodMenu[index],
            ),
          ));
    }

    return SizedBox(
      height: 150,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: controller.foodMenu.length,
          itemBuilder: (context, index) {
            return FoodTile(
              food: controller.foodMenu[index],
              onTap: () => onNavigateToFoodDetail(index),
            );
          }),
    );
  }
}
