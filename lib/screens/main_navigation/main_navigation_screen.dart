import 'package:flutter/material.dart';

import '../user/home/home_screen.dart';
import '../explore/explore_screen.dart';
import '../activity/activity_screen.dart';
import '../chat/chat_screen.dart';
import '../profile/profile_screen.dart';

import '../../core/constants/app_colors.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const ActivityScreen(),
    const ChatScreen(),
    const ProfileScreen(),
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
            label: 'Explorar',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Actividad',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Mensajes',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
