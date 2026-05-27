import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Mensajes')),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _chatTile(
            name: 'Martínez Plomería',
            message: 'Claro, podemos ir hoy.',
          ),

          _chatTile(
            name: 'TechFix',
            message: 'Tu computadora estará lista mañana.',
          ),
        ],
      ),
    );
  }

  Widget _chatTile({required String name, required String message}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: AppColors.primary,
          child: const Icon(Icons.business, color: Colors.white),
        ),

        title: Text(name, style: const TextStyle(color: Colors.white)),

        subtitle: Text(message, style: const TextStyle(color: Colors.white70)),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 16,
        ),
      ),
    );
  }
}
