import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Explorar servicios')),

      body: ListView(
        padding: const EdgeInsets.all(24),

        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Buscar servicios...',
              prefixIcon: Icon(Icons.search),
            ),
          ),

          const SizedBox(height: 30),

          Wrap(
            spacing: 16,
            runSpacing: 16,

            children: [
              _buildCategory(Icons.plumbing, 'Plomería'),
              _buildCategory(Icons.electrical_services, 'Electricista'),
              _buildCategory(Icons.cleaning_services, 'Limpieza'),
              _buildCategory(Icons.computer, 'Computación'),
              _buildCategory(Icons.car_repair, 'Mecánica'),
              _buildCategory(Icons.local_hospital, 'Salud'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(IconData icon, String title) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 40),

          const SizedBox(height: 12),

          Text(
            title,
            textAlign: TextAlign.center,

            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
