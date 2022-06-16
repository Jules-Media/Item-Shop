library screens;

import 'package:flutter/gestures.dart' show DragStartBehavior;
import 'package:flutter/material.dart';
import 'package:item_shop/models/settings_protocol.dart' show allSettings;
import 'package:string_translate/string_translate.dart' show Translate;

/// Screen from which you can access
/// all the different Settings.
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  /// Name of the Settings Screen
  /// used in Navigation
  static const routeName = '/settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }

  /// AppBar used in the Settings Screen.
  AppBar get _appBar {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Text('Settings'.tr()),
    );
  }

  /// Body used in the Settings Screen.
  ListView get _body {
    return ListView.builder(
      addAutomaticKeepAlives: true,
      addRepaintBoundaries: true,
      addSemanticIndexes: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      dragStartBehavior: DragStartBehavior.down,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: allSettings.length,
      itemBuilder: (_, counter) {
        // Set Setting
        final setting = allSettings.elementAt(counter);

        // Return List Tile
        return ListTile(
          enabled: true,
          isThreeLine: false,
          leading: setting.icon,
          title: Text(setting.name.tr()),
          subtitle: Text(setting.description.tr()),
        );
      },
    );
  }
}
