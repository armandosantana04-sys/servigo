import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Mensajes')),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _buildChatTile(
            name: 'Martínez Plomería',
            message: 'Claro, puedo ir hoy mismo.',
          ),

          _buildChatTile(
            name: 'CleanPro',
            message: 'Gracias por contratar nuestro servicio.',
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
            child: const Icon(Icons.business, color: Colors.white),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 4),

                Text(message, style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
