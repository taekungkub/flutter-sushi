import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:flutter_application_empty/src/home/home_controller.dart';
import 'package:flutter_application_empty/src/search_food/components/search_food_field.dart';
import 'package:flutter_application_empty/src/search_food/components/search_list.dart';
import 'package:flutter_application_empty/src/search_food/search_food_controller.dart';

class SearchFoodView extends StatefulWidget {
  const SearchFoodView({super.key});

  static const routeName = '/search-food';

  @override
  State<SearchFoodView> createState() => _SearchFoodViewState();
}

class _SearchFoodViewState extends State<SearchFoodView> {
  final searchFoodController = SearchFoodController(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchFoodField(
              controller: searchFoodController,
              onChange: (value) {
                searchFoodController.handleSearch(value);
                setState(() {});
              },
              onClear: () {
                setState(() {});
                searchFoodController.handleSearch('');
              },
            ),
            SizedBox(
              height: kDefaultPaddin,
            ),
            Text(
              "Search",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            SearchList(
              searchFoodController: searchFoodController,
            ),
          ],
        ),
      ),
    );
  }
}
