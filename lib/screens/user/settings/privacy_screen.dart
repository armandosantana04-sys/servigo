import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Privacidad')),

      body: ListView(
        padding: const EdgeInsets.all(24),

        children: [
          _buildTile(Icons.lock_outline, 'Privacidad de la cuenta'),

          _buildTile(
            Icons.visibility_off_outlined,
            'Ocultar información personal',
          ),

          _buildTile(Icons.security_outlined, 'Seguridad de la aplicación'),
        ],
      ),
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(18),
      ),

      child: ListTile(
        leading: Icon(icon, color: AppColors.primary),

        title: Text(title, style: const TextStyle(color: Colors.white)),

        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white54),
      ),
    );
  }
}
