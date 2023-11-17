import 'package:flutter/material.dart';
import 'package:flutter_application_empty/src/constant.dart';
import 'package:flutter_application_empty/src/settings/components/edit_displayname.dart';
import 'package:flutter_application_empty/src/settings/settings_controller.dart';
import 'package:flutter_application_empty/widget/item_card.dart';
import 'package:flutter_application_empty/widget/page_header.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  static const routeName = '/settings';

  Widget _arrow() {
    return Icon(
      Icons.arrow_forward_ios,
      size: 15.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SettingsController>(context);
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations!.setting),
      ),
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: const EdgeInsets.only(top: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: kDefaultPaddin),
              child: PageHeader(title: 'Menu'),
            ),
            SizedBox(
              height: 10,
            ),
            ItemCard(
                title: 'Displayname ',
                rightWidget: _arrow(),
                textColor: null,
                callback: () {
                  showModalSheet(context);
                }),
            ItemCard(
              title: 'Settings Item 02',
              rightWidget: _arrow(),
              textColor: null,
              callback: () {
                print('Tap Settings Item 02');
              },
            ),
            ItemCard(
              title: 'Dark Mode',
              rightWidget: Switch(
                value: controller.themeMode == ThemeMode.dark
                    ? true
                    : false,
                onChanged: (bool value) {
                  controller.updateThemeMode(value == true
                      ? ThemeMode.dark
                      : ThemeMode.light);
                },
              ),
              textColor: null,
              callback: () {},
            ),
            ItemCard(
              title: 'Language',
              rightWidget: DropdownButton<Locale>(
                value: controller.locale,
                onChanged: controller.updateLang,
                items: const [
                  DropdownMenuItem(
                    value: Locale('en', ''),
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: Locale('th', 'TH'),
                    child: Text('ภาษาไทย'),
                  ),
                ],
              ),
              textColor: null,
              callback: () {},
            ),
          ],
        ),
      ),
    );
  }
}
