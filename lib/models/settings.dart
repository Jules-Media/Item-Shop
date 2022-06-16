library models;

import 'package:flutter/material.dart' show Icon, Icons, Locale, ThemeMode;
import 'package:item_shop/models/settings_protocol.dart' hide allSettings;
import 'package:string_translate/string_translate.dart' show TranslationLocales;

/// The Setting with which you can set
/// the main Color for this App.
class ColorSetting implements SettingsProtocol {
  // Constant Constructor
  const ColorSetting();

  @override
  String get name => 'Color';

  @override
  String get description => 'Change the main Color of your App';

  @override
  SettingsType get type => SettingsType.twoTypeSwitch;

  @override
  int get numberOfChoices => 2;

  @override
  Set<bool> get choices => {true, false};

  @override
  Icon get icon => const Icon(Icons.color_lens);
}

/// The Setting with which you can set
/// the Theme Mode of this App.
class ThemeModeSetting implements SettingsProtocol {
  // Constand Constructor
  const ThemeModeSetting();

  @override
  String get name => 'Theme Mode';

  @override
  String get description => 'Change the Theme Mode';

  @override
  SettingsType get type => SettingsType.optionsChoice;

  @override
  int get numberOfChoices => 3;

  @override
  Set<ThemeMode> get choices => {
        ThemeMode.system,
        ThemeMode.light,
        ThemeMode.dark,
      };

  @override
  Icon get icon => const Icon(Icons.invert_colors_on_rounded);
}

/// The Setting to control the Language in
/// which the text in this App is displayed.
class LanguageSetting implements SettingsProtocol {
  // Constant Constructor
  const LanguageSetting();

  @override
  String get name => 'Language Setting';

  @override
  String get description => 'Change you Language to display the Text';

  @override
  SettingsType get type => SettingsType.optionsChoice;

  @override
  int get numberOfChoices => 2;

  @override
  Set<Locale> get choices => {
        TranslationLocales.english,
        TranslationLocales.german,
      };

  @override
  Icon get icon => const Icon(Icons.language);
}
