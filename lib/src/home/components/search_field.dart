import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/search_food/search_food_view.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () => {
        Navigator.restorablePushNamed(
            context, SearchFoodView.routeName)
      },
      decoration: new InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: 'Search',
      ),
    );
  }
}
