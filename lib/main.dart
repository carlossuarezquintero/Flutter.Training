import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      home: const Listview2Screen(),
      routes: {
        'home': (context) => const HomeScreen(),
        'Listview1': (context) => const Listview1Screen(),
        'Listview2': (context) => const Listview2Screen(),
        'alert': (context) => const AlertScreen(),
        'card': (context) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}
