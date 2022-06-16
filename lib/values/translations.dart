library values;

import 'package:flutter/material.dart' show Locale;
import 'package:string_translate/string_translate.dart';

/// Contains the Translated Values of the Strings.
class TranslatedStrings {
  /// The Translations used in this App.
  static final Map<String, Map<Locale, String>> translations = {
    'Unknown Screen': {
      TranslationLocales.german: 'Unbekannte Seite',
    },
    'We didn\'t find the Screen you where looking for.': {
      TranslationLocales.german:
          'Wir haben die Seite die du gesucht hast nicht gefunden.',
    },
    // TODO: add Translations for Settings Names and Descriptions
  };
}
