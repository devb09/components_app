import 'package:components_app/router/routes.dart';
import 'package:components_app/themes/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: Routes.initialRoute,
      routes: Routes.getAppRoutes(),
      // onGenerateRoute: (settings) => Routes.onGenerateRoute(settings),
      // onGenerateRoute: Routes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}
