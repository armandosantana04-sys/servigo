import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Métodos de pago')),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            _buildCard(
              icon: Icons.credit_card,
              title: 'Tarjeta Visa terminación 4582',
            ),

            _buildCard(
              icon: Icons.account_balance_wallet,
              title: 'Mercado Pago',
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {},

              icon: const Icon(Icons.add),

              label: const Text('Agregar método'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({required IconData icon, required String title}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),

          const SizedBox(width: 16),

          Expanded(
            child: Text(title, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
