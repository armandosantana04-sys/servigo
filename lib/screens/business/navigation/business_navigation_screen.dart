import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

import '../dashboard/business_dashboard_screen.dart';
import '../services/business_services_screen.dart';
import '../messages/business_messages_screen.dart';
import '../profile/business_profile_screen.dart';

class BusinessNavigationScreen extends StatefulWidget {
  const BusinessNavigationScreen({super.key});

  @override
  State<BusinessNavigationScreen> createState() =>
      _BusinessNavigationScreenState();
}

class _BusinessNavigationScreenState extends State<BusinessNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const BusinessDashboardScreen(),
    const BusinessServicesScreen(),
    const BusinessMessagesScreen(),
    const BusinessProfileScreen(),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'Servicios',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mensajes'),

          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Perfil'),
        ],
      ),
    );
  }
}
