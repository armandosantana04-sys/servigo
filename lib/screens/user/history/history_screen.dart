import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Historial')),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _buildHistoryCard(
            service: 'Servicio de plomería',
            status: 'Completado',
            date: 'Hace 2 días',
          ),

          _buildHistoryCard(
            service: 'Reparación de laptop',
            status: 'Pendiente',
            date: 'Hoy',
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryCard({
    required String service,
    required String status,
    required String date,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            service,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 10),

          Text(
            status,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 6),

          Text(date, style: TextStyle(color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}
