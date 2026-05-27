import 'package:flutter/material.dart';
import '../../auth/login/login_screen.dart';
import '../../../core/constants/app_colors.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,

        title: const Text('Mi Perfil'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.primary,

              child: const Icon(Icons.person, size: 50, color: Colors.white),
            ),

            const SizedBox(height: 20),

            const Text(
              'Armando López',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              'armando@email.com',
              style: TextStyle(color: AppColors.textSecondary),
            ),

            const SizedBox(height: 40),

            _option(context, Icons.history, 'Historial', () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Historial próximamente')),
              );
            }),
            _option(context, Icons.favorite, 'Favoritos', () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Favoritos próximamente')),
              );
            }),
            _option(context, Icons.settings, 'Configuración', () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Configuración próximamente')),
              );
            }),
            _option(context, Icons.logout, 'Cerrar sesión', () {
              Navigator.pushAndRemoveUntil(
                context,

                MaterialPageRoute(builder: (_) => const LoginScreen()),

                (route) => false,
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _option(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: ListTile(
        onTap: onTap,
        leading: Icon(icon, color: AppColors.primary),

        title: Text(title, style: const TextStyle(color: Colors.white)),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 16,
        ),
      ),
    );
  }
}
