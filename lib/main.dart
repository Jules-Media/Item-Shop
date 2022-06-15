library main;

import 'package:flutter/material.dart';
import 'package:item_shop/screens/homescreen.dart';
import 'package:item_shop/screens/settings_screen.dart';
import 'package:item_shop/screens/unknown_screen.dart';
import 'package:item_shop/values/translations.dart';
import 'package:modern_themes/modern_themes.dart' show Themes;
import 'package:string_translate/string_translate.dart'
    show Translation, TranslationDelegates, TranslationLocales;

void main() {
  runApp(const ItemShop());
}

/// The Main Widget for this App.
/// The MaterialApp is returned in here.
class ItemShop extends StatelessWidget {
  const ItemShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// The Title for this App.
    const title = 'Item Shop';

    // Init the Translations Package
    Translation.init(
      defaultLocale: TranslationLocales.english,
      supportedLocales: {
        TranslationLocales.english,
        TranslationLocales.german,
      },
      translations: TranslatedStrings.translations,
    );

    return MaterialApp(
      /* Developer Section */
      showPerformanceOverlay: false,
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,
      checkerboardOffscreenLayers: false,
      checkerboardRasterCacheImages: false,

      /* App Section */
      // General Values
      scrollBehavior: const MaterialScrollBehavior(),
      useInheritedMediaQuery: false,

      // Title
      title: title,
      onGenerateTitle: (_) => title,

      // Themes
      themeMode: ThemeMode.system,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      highContrastTheme: Themes.highContrastLightTheme,
      highContrastDarkTheme: Themes.highContrastDarkTheme,

      // Locales
      localizationsDelegates: TranslationDelegates.localizationDelegates,
      supportedLocales: Translation.supportedLocales,

      // Routes
      initialRoute: Homescreen.routeName,
      routes: _routes,
      onUnknownRoute: (_) => _onUnkownRoute,
    );
  }

  /// The Routes for this App.
  Map<String, Widget Function(BuildContext)> get _routes {
    return {
      Homescreen.routeName: (context) => const Homescreen(),
      SettingsScreen.routeName: (context) => const SettingsScreen(),
    };
  }

  /// Getter for the Route used as Unkown Screen.
  Route<UnknownScreen> get _onUnkownRoute {
    return MaterialPageRoute(builder: (_) {
      return const UnknownScreen();
    });
  }
}
