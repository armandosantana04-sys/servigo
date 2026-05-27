import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Ayuda y soporte')),

      body: ListView(
        padding: const EdgeInsets.all(24),

        children: [
          _buildTile(Icons.help_outline, 'Preguntas frecuentes'),

          _buildTile(Icons.report_problem_outlined, 'Reportar un problema'),

          _buildTile(Icons.email_outlined, 'Contactar soporte'),
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

        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
