import 'package:flutter/material.dart';
import '../../shared/chat/chat_screen.dart';
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
            context: context,
            name: 'Martínez Plomería',
            message: 'Claro, podemos ir hoy.',
          ),

          _chatTile(
            context: context,
            name: 'TechFix',
            message: 'Tu computadora estará lista mañana.',
          ),
        ],
      ),
    );
  }

  Widget _chatTile({
    required BuildContext context,
    required String name,
    required String message,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ChatScreen(chatName: name, isBusiness: false),
          ),
        );
      },

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
