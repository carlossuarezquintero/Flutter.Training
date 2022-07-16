import 'package:flutter/material.dart';
import 'package:flutter_test_components/screens/listview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Listview1Screen(),
    );
  }
}
