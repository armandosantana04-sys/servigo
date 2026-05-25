import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(const ServiGoApp());
}

class ServiGoApp extends StatelessWidget {
  const ServiGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'ServiGo',

      theme: AppTheme.darkTheme,

      initialRoute: AppRoutes.login,

      routes: AppRoutes.routes,
    );
  }
}
