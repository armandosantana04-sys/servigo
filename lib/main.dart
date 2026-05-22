import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/auth/login/login_screen.dart';

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

      home: const LoginScreen(),
    );
  }
}
