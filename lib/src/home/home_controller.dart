import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/food.dart';

class HomeController with ChangeNotifier {
  late List _foodMenu = menus;

  List get foodMenu => _foodMenu;
}
