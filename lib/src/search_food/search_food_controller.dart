import 'package:flutter/widgets.dart';
import 'package:flutter_application_empty/src/home/home_controller.dart';

class SearchFoodController with ChangeNotifier {
  SearchFoodController(this._homeController);

  late List _result = [];
  List get result => _result;
  final HomeController _homeController;

  void handleSearch(String search) {
    if (search.isNotEmpty) {
      _result = _homeController.foodMenu
          .where((item) =>
              item.name.toLowerCase().contains(search.toLowerCase()))
          .toList();
    } else {
      _result = [];
    }

    notifyListeners();
  }

  List resultSearch() {
    return _result;
  }
}
