import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:textme/src/config/application.dart';
import 'package:textme/src/config/routes.dart';
import 'package:textme/src/values/colors.dart';

class FlutteredApp extends StatefulWidget {
  @override
  _FlutteredAppState createState() => _FlutteredAppState();
}

class _FlutteredAppState extends State<FlutteredApp> {
  _FlutteredAppState() {
    final router = new FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  /// Default theme.
  static final ThemeData _defaultTheme = new ThemeData(
    primaryColor: primaryColor,
    accentColor: Colors.white,
    scaffoldBackgroundColor: scaffoldBgColor,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluttered WhatzApp',
      theme: _defaultTheme,
      onGenerateRoute: Application.router.generator,
    );
  }
}
