import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class ChatScreen extends StatefulWidget {
  final String userName;

  const ChatScreen({super.key, required this.userName});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController messageController = TextEditingController();

  final List<Map<String, dynamic>> messages = [
    {'text': 'Hola 👋', 'isMe': false},

    {'text': '¿En qué puedo ayudarte?', 'isMe': false},
  ];

  void sendMessage() {
    if (messageController.text.trim().isEmpty) return;

    setState(() {
      messages.add({'text': messageController.text, 'isMe': true});
    });

    final userMessage = messageController.text;

    messageController.clear();

    Future.delayed(const Duration(milliseconds: 900), () {
      setState(() {
        messages.add({'text': _autoReply(userMessage), 'isMe': false});
      });
    });
  }

  String _autoReply(String message) {
    final text = message.toLowerCase();

    if (text.contains('precio')) {
      return 'Claro, podemos darte información de precios.';
    }

    if (text.contains('disponible')) {
      return 'Sí, tenemos disponibilidad hoy.';
    }

    if (text.contains('hola')) {
      return '¡Hola! Bienvenido a ServiGo 👋';
    }

    return 'Gracias por comunicarte con nosotros.';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: Text(widget.userName)),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),

              itemCount: messages.length,

              itemBuilder: (context, index) {
                final message = messages[index];

                final isMe = message['isMe'];

                return Align(
                  alignment: isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,

                  child: Container(
                    margin: const EdgeInsets.only(bottom: 14),

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),

                    decoration: BoxDecoration(
                      color: isMe
                          ? AppColors.primary
                          : AppColors.cardBackground,

                      borderRadius: BorderRadius.circular(18),
                    ),

                    child: Text(
                      message['text'],

                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                );
              },
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(color: AppColors.cardBackground),

            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,

                    style: const TextStyle(color: Colors.white),

                    decoration: const InputDecoration(
                      hintText: 'Escribe un mensaje...',
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                CircleAvatar(
                  backgroundColor: AppColors.primary,

                  child: IconButton(
                    onPressed: sendMessage,

                    icon: const Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
