import 'package:flutter/material.dart';

class BusinessNavigationScreen extends StatefulWidget {
  const BusinessNavigationScreen({super.key});

  @override
  State<BusinessNavigationScreen> createState() =>
      _BusinessNavigationScreenState();
}

class _BusinessNavigationScreenState extends State<BusinessNavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    const Center(child: Text('Dashboard')),
    const Center(child: Text('Servicios')),
    const Center(child: Text('Solicitudes')),
    const Center(child: Text('Mensajes')),
    const Center(child: Text('Perfil empresa')),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home_repair_service),
            label: 'Servicios',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Solicitudes',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mensajes'),

          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Perfil'),
        ],
      ),
    );
  }
}
