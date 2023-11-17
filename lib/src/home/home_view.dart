import 'package:flutter/material.dart';
import 'package:flutter_application_empty/widget/CartIcon.dart';

import 'package:flutter_application_empty/src/home/components/body.dart';
import 'package:flutter_application_empty/src/home/home_controller.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_application_empty/widget/drawer_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

final homeController = HomeController();

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
        actions: [
          CartIcon(),
        ],
      ),
      body: Body(
        controller: homeController,
      ),
    );
  }
}
