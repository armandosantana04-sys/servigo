import 'package:flutter/material.dart';
import '../../auth/login/login_screen.dart';
import '../../../core/constants/app_colors.dart';

class BusinessProfileScreen extends StatelessWidget {
  const BusinessProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Perfil del negocio')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.primary,

              child: const Icon(Icons.business, color: Colors.white, size: 50),
            ),

            const SizedBox(height: 20),

            Text(
              'TechFix Reparaciones',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Especialistas en reparación de computadoras y laptops.',
              textAlign: TextAlign.center,

              style: TextStyle(color: AppColors.textSecondary, fontSize: 16),
            ),

            const SizedBox(height: 30),

            _buildInfoTile(
              icon: Icons.phone,
              title: 'Teléfono',
              value: '+52 786 123 4567',
            ),

            _buildInfoTile(
              icon: Icons.location_on,
              title: 'Dirección',
              value: 'Ciudad Hidalgo, Michoacán',
            ),

            _buildInfoTile(
              icon: Icons.access_time,
              title: 'Horario',
              value: '8:00 AM - 8:00 PM',
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),

                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,

                    MaterialPageRoute(builder: (_) => const LoginScreen()),

                    (route) => false,
                  );
                },

                child: const Text('Cerrar sesión'),
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Editar perfil próximamente')),
                  );
                },

                child: const Text('Editar perfil'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(title, style: TextStyle(color: AppColors.textSecondary)),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
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
