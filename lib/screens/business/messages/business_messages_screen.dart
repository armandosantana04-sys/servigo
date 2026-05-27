import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class BusinessMessagesScreen extends StatelessWidget {
  const BusinessMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Mensajes')),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _buildChatTile(
            name: 'Juan Pérez',
            message: '¿Tiene disponibilidad hoy?',
          ),

          _buildChatTile(
            name: 'Andrea López',
            message: 'Necesito información.',
          ),
        ],
      ),
    );
  }

  Widget _buildChatTile({required String name, required String message}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary,
            child: const Icon(Icons.person, color: Colors.white),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(message, style: TextStyle(color: AppColors.textSecondary)),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 18),
        ],
      ),
    );
  }
}
