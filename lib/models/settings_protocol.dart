library models;

import 'package:flutter/material.dart';
import 'package:item_shop/models/settings.dart';
import 'package:item_shop/screens/settings_screen.dart' show SettingsScreen;

/// All the Settings used in the App.
const Set<SettingsProtocol> allSettings = {
  // Setting to control the Color
  ColorSetting(),

  // Setting to control the Theme Mode
  ThemeModeSetting(),

  // Setting to control the Language
  LanguageSetting(),
};

/// Enum for all the
/// different Types a Setting can
/// have.
enum SettingsType {
  /// On / Off Option
  twoTypeSwitch,

  /// You can choose between a
  /// few Options
  optionsChoice,
}

/// The Protocol all Settings have to
/// match.
abstract class SettingsProtocol {
  // Const Constructor.
  const SettingsProtocol({
    required this.name,
    required this.description,
    required this.type,
    required this.numberOfChoices,
    required this.icon,
  });

  /// Name of the Setting
  final String name;

  /// Description of the Setting.
  final String description;

  /// The Type of this Settings Input Value.
  /// Through this Type you can get how to show
  /// the Setting and how to process the Value.
  final SettingsType type;

  /// The Number of different Choices
  /// you can choose between as a value
  /// of this Setting.
  final int numberOfChoices;

  /// The Icon shown as leading
  /// at the List Tile on the
  /// [SettingsScreen]
  final Icon icon;
}
