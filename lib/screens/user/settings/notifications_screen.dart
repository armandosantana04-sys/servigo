import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool promotions = true;
  bool messages = true;
  bool reminders = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Notificaciones')),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            _buildSwitchTile(
              title: 'Promociones',
              value: promotions,
              onChanged: (value) {
                setState(() {
                  promotions = value;
                });
              },
            ),

            _buildSwitchTile(
              title: 'Mensajes',
              value: messages,
              onChanged: (value) {
                setState(() {
                  messages = value;
                });
              },
            ),

            _buildSwitchTile(
              title: 'Recordatorios',
              value: reminders,
              onChanged: (value) {
                setState(() {
                  reminders = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(18),
      ),

      child: SwitchListTile(
        value: value,
        onChanged: onChanged,

        activeColor: AppColors.primary,

        title: Text(title, style: const TextStyle(color: Colors.white)),
      ),
    );
  }
}
