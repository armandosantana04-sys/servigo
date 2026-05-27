import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Mi Perfil')),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 20),

            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primary,

              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),

            const SizedBox(height: 20),

            const Text(
              'Armando',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Usuario común',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            const SizedBox(height: 40),

            _buildOption(Icons.history, 'Historial'),
            _buildOption(Icons.favorite, 'Favoritos'),
            _buildOption(Icons.settings, 'Configuración'),
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
