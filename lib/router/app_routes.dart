import 'package:flutter/material.dart';
import 'package:flutter_test_components/models/models.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home_max_sharp,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOption(
        route: 'Listview1',
        icon: Icons.list_alt,
        name: 'List1 Screen',
        screen: const Listview1Screen()),
    MenuOption(
        route: 'Listview2',
        icon: Icons.list,
        name: 'List2 Screen',
        screen: const Listview2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.add_alert_outlined,
        name: 'Alert Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.card_giftcard_outlined,
        name: 'card Screen',
        screen: const CardScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'Listview1': (context) => const Listview1Screen(),
  //   'Listview2': (context) => const Listview2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
