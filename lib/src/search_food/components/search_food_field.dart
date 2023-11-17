import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/search_food/search_food_controller.dart';

class SearchFoodField extends StatefulWidget {
  final ValueChanged onChange;
  final VoidCallback onClear;
  final SearchFoodController controller;
  const SearchFoodField(
      {super.key,
      required this.onChange,
      required this.onClear,
      required this.controller});

  @override
  State<SearchFoodField> createState() => _SearchFoodFieldState();
}

final TextEditingController _searchController =
    TextEditingController();

class _SearchFoodFieldState extends State<SearchFoodField> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _searchController,
        onChanged: (value) {
          widget.onChange(value);
        },
        decoration: new InputDecoration(
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.transparent, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.transparent, width: 2),
            ),
            hintText: 'Search',
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
                    onPressed: () {
                      setState(() {});
                      _searchController.clear();
                      widget.onClear();
                    },
                    icon: Icon(Icons.clear),
                  )
                : null));
  }
}
