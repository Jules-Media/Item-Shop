library screens;

import 'package:flutter/material.dart';
import 'package:string_translate/string_translate.dart' show Translate;

/// Screen shown when the App
/// didn't find a specific Screen
class UnknownScreen extends StatelessWidget {
  const UnknownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: _body,
      extendBody: true,
      extendBodyBehindAppBar: true,
      endDrawerEnableOpenDragGesture: false,
      drawerEnableOpenDragGesture: false,
    );
  }

  /// AppBar for the Unknown Screen
  AppBar get _appBar {
    return AppBar(
      automaticallyImplyLeading: true,
      title: Text('Unknown Screen'.tr()),
    );
  }

  /// Body for the Unknown Screen
  Column get _body {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      textBaseline: TextBaseline.alphabetic,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        // Question Mark Icon
        const Icon(Icons.question_mark_rounded),

        // Spacer
        const SizedBox(height: 20),

        // Text
        Text('We didn\'t find the Screen you where looking for.'.tr())
      ],
    );
  }
}
