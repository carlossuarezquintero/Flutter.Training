import 'package:flutter/material.dart';
import 'package:flutter_test_components/router/app_routes.dart';
import 'package:flutter_test_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        theme: AppTheme.lightTheme,
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
