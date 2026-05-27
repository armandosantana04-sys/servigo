import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class BusinessProfileScreen extends StatelessWidget {
  const BusinessProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Perfil Empresa')),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 20),

            CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.primary,

              child: const Icon(Icons.business, size: 55, color: Colors.white),
            ),

            const SizedBox(height: 20),

            const Text(
              'TechFix Reparaciones',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Servicios de computación',
              style: TextStyle(color: Colors.white70),
            ),

            const SizedBox(height: 40),

            _buildOption(Icons.edit, 'Editar información'),
            _buildOption(Icons.work, 'Mis servicios'),
            _buildOption(Icons.analytics, 'Estadísticas'),
            _buildOption(Icons.logout, 'Cerrar sesión'),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),

          const SizedBox(width: 16),

          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
        ],
      ),
    );
  }
}
