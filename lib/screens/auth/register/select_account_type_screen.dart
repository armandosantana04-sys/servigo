import 'package:flutter/material.dart';
import 'register_user_screen.dart';
import 'register_business_screen.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/routes/app_routes.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  const SelectAccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Tipo de cuenta')),

      body: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 30),

            Text(
              'Selecciona el tipo de cuenta',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              'Elige cómo deseas registrarte en ServiGo.',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 16),
            ),

            const SizedBox(height: 50),

            _buildOptionCard(
              context,
              title: 'Usuario común',
              subtitle: 'Buscar y contratar servicios.',
              icon: Icons.person,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.registerUser);
              },
            ),

            const SizedBox(height: 24),

            _buildOptionCard(
              context,
              title: 'Empresa / Negocio',
              subtitle: 'Ofrecer servicios a clientes.',
              icon: Icons.business,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.registerBusiness);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),

        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(24),
        ),

        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.15),
                borderRadius: BorderRadius.circular(18),
              ),

              child: Icon(icon, color: AppColors.primary, size: 34),
            ),

            const SizedBox(width: 20),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    subtitle,
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            const Icon(Icons.arrow_forward_ios, color: Colors.white54),
          ],
        ),
      ),
    );
  }
}
