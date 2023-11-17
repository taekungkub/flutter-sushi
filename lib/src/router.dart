import 'package:flutter/material.dart';
import 'package:flutter_application_empty/model/food.dart';
import 'package:flutter_application_empty/src/cart/cart_view.dart';
import 'package:flutter_application_empty/src/food_detail/food_detail_view.dart';
import 'package:flutter_application_empty/src/home/home_view.dart';
import 'package:flutter_application_empty/src/launcher.dart';
import 'package:flutter_application_empty/src/search_food/search_food_view.dart';
import 'package:flutter_application_empty/src/settings/settings_view.dart';

Route<dynamic> generateRoute(
  RouteSettings routeSettings,
) {
  switch (routeSettings.name) {
    case SettingsView.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => SettingsView());
    case FoodDetailView.routeName:
      var food = routeSettings.arguments as Food;

      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => FoodDetailView(
                food: food,
              ));
    case CartView.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => CartView());
    case SearchFoodView.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => SearchFoodView());
    case HomeView.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => HomeView());
    default:
      return MaterialPageRoute(
          settings: routeSettings, builder: (_) => Launcher());
  }
}
