import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../services/services_screen.dart';
import '../favorites/favorites_screen.dart';
import '../profile/profile_screen.dart';
import '../../shared/chat/chat_screen.dart';

class UserNavigationScreen extends StatefulWidget {
  const UserNavigationScreen({super.key});

  @override
  State<UserNavigationScreen> createState() => _UserNavigationScreenState();
}

class _UserNavigationScreenState extends State<UserNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const HomeScreen(),
    const ServicesScreen(),
    const FavoritesScreen(),
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

        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),

          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Servicios'),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mensajes'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}
