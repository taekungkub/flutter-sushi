import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/food_detail/food_detail_view.dart';
import 'package:flutter_application_empty/src/search_food/search_food_controller.dart';
import 'package:flutter_application_empty/widget/search_food_tile.dart';

class SearchList extends StatelessWidget {
  final SearchFoodController searchFoodController;
  const SearchList({super.key, required this.searchFoodController});

  @override
  Widget build(BuildContext context) {
    void onNavigateToFoodDetail(int index) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetailView(
              food: searchFoodController.result[index],
            ),
          ));
    }

    return Expanded(
        child: ListView.builder(
            itemCount: searchFoodController.result.length,
            itemBuilder: (context, index) {
              return SearchFoodTile(
                onTap: () {
                  onNavigateToFoodDetail(index);
                },
                food: searchFoodController.result[index],
              );
            }));
  }
}
