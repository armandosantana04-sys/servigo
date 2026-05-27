import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class BusinessServicesScreen extends StatelessWidget {
  const BusinessServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Mis servicios')),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {},

        child: const Icon(Icons.add),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _buildServiceCard(
            title: 'Plomería general',
            category: 'Hogar',
            price: '\$300',
          ),

          _buildServiceCard(
            title: 'Instalaciones eléctricas',
            category: 'Electricista',
            price: '\$500',
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({
    required String title,
    required String category,
    required String price,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text(
            title,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(category, style: TextStyle(color: AppColors.textSecondary)),

          const SizedBox(height: 10),

          Text(
            price,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},

                  child: const Text('Editar'),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: ElevatedButton(
                  onPressed: () {},

                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

                  child: const Text('Eliminar'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
