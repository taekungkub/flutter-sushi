import 'package:flutter/material.dart';

import 'package:flutter_application_empty/src/app.dart';
import 'package:flutter_application_empty/src/cart/cart_controller.dart';
import 'package:flutter_application_empty/src/settings/settings_controller.dart';
import 'package:flutter_application_empty/src/settings/settings_service.dart';
import 'package:provider/provider.dart';

void main() async {
  // final settingsController = SettingsController(SettingsService());

  // await settingsController.loadSettings();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CartController()),
      ChangeNotifierProvider(
          create: (context) => SettingsController(SettingsService()))
    ],
    child: MyApp(),
  ));
}
