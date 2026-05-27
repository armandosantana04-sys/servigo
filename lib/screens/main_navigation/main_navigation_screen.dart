import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

import '../user/home/home_screen.dart';
import '../services/services_catalog_screen.dart';
import '../messages/messages_screen.dart';
import '../profile/user_profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ServicesCatalogScreen(),
    const MessagesScreen(),
    const UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        backgroundColor: AppColors.cardBackground,

        selectedItemColor: AppColors.primary,
        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),

          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Servicios',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mensajes'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
