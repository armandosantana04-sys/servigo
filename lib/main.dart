import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:servigo/firebase_options.dart';
import 'screens/splash/splash_screen.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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

      initialRoute: '/splash',
      routes: {
        ...AppRoutes.routes,

        '/splash': (context) => const SplashScreen(),
      },
    );
  }
}
