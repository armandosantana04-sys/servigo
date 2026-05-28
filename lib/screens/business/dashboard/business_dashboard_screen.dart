import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class BusinessDashboardScreen extends StatelessWidget {
  const BusinessDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Panel de negocio'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Bienvenido 👋',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Administra tus servicios y clientes.',
              style: TextStyle(color: AppColors.textSecondary),
            ),

            const SizedBox(height: 30),

            Row(
              children: [
                Expanded(
                  child: _buildCard(
                    title: 'Servicios',
                    value: '12',
                    icon: Icons.home_repair_service,
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: _buildCard(
                    title: 'Clientes',
                    value: '34',
                    icon: Icons.people,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: _buildCard(
                    title: 'Calificación',
                    value: '4.9',
                    icon: Icons.star,
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: _buildCard(
                    title: 'Reservas',
                    value: '18',
                    icon: Icons.calendar_month,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            Text(
              'Solicitudes recientes',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            _buildRequestCard(client: 'Juan Pérez', service: 'Plomería'),

            _buildRequestCard(client: 'Andrea López', service: 'Electricista'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 34),

          const SizedBox(height: 14),

          Text(
            value,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          Text(title, style: TextStyle(color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildRequestCard({required String client, required String service}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(18),

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
                  client,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 4),

                Text(service, style: TextStyle(color: AppColors.textSecondary)),
              ],
            ),
          ),

          ElevatedButton(onPressed: () {}, child: const Text('Ver')),
        ],
      ),
    );
  }
}
