library screens;

import 'package:bloc_implementation/bloc_implementation.dart' show BlocParent;
import 'package:flutter/material.dart';
import 'package:item_shop/blocs/homescreen_bloc.dart';
import 'package:string_translate/string_translate.dart' show Translate;

/// Homescreen shown when the App is opened
class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  /// Name of the Route used in Navigation.
  static const routeName = '/';

  @override
  State<StatefulWidget> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  /// The corresponding Bloc to this Screen.
  /// It has the Type [HomescreenBloc]
  late final HomescreenBloc? bloc;

  @override
  Widget build(BuildContext context) {
    // Initialize Bloc
    bloc ??= BlocParent.of(context);

    return Scaffold(
      appBar: _appBar,
      body: _body,
      extendBody: true,
      extendBodyBehindAppBar: true,
    );
  }

  /// AppBar for the Homescreen
  AppBar get _appBar {
    return AppBar(
      actions: <IconButton>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
      automaticallyImplyLeading: false,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.storefront),
          Text('Store'.tr()),
        ],
      ),
    );
  }

  /// Body of the Homescreen
  GridView get _body {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (_, counter) {
        return const GridTile(
          child: Center(),
        );
      },
    );
  }
}
