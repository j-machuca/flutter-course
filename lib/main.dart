import 'package:flutter/material.dart';
import 'package:flutter_course/router/app_routes.dart';
import 'package:flutter_course/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // Generates a route for non existing patterns in route object
      // agruments passing directly
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings)
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
