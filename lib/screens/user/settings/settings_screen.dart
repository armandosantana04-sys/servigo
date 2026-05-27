import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

import 'edit_profile_screen.dart';
import 'notifications_screen.dart';
import 'privacy_screen.dart';
import 'change_password_screen.dart';
import 'payment_methods_screen.dart';
import 'saved_address_screen.dart';
import 'support_screen.dart';
import 'about_app_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Configuración')),

      body: ListView(
        padding: const EdgeInsets.all(24),

        children: [
          _buildTile(
            context,
            Icons.person_outline,
            'Editar perfil',
            const EditProfileScreen(),
          ),

          _buildTile(
            context,
            Icons.location_on_outlined,
            'Dirección guardada',
            const SavedAddressScreen(),
          ),

          _buildTile(
            context,
            Icons.notifications_outlined,
            'Notificaciones',
            const NotificationsScreen(),
          ),

          _buildTile(
            context,
            Icons.lock_outline,
            'Privacidad',
            const PrivacyScreen(),
          ),

          _buildTile(
            context,
            Icons.password_outlined,
            'Cambiar contraseña',
            const ChangePasswordScreen(),
          ),

          _buildTile(
            context,
            Icons.credit_card,
            'Métodos de pago',
            const PaymentMethodsScreen(),
          ),

          _buildTile(
            context,
            Icons.support_agent,
            'Ayuda y soporte',
            const SupportScreen(),
          ),

          _buildTile(
            context,
            Icons.info_outline,
            'Acerca de la app',
            const AboutAppScreen(),
          ),

          const SizedBox(height: 40),

          ElevatedButton.icon(
            onPressed: () {
              Navigator.pop(context);
            },

            icon: const Icon(Icons.logout),

            label: const Text('Cerrar sesión'),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              foregroundColor: Colors.white,

              padding: const EdgeInsets.symmetric(vertical: 16),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(
    BuildContext context,
    IconData icon,
    String title,
    Widget screen,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(18),
      ),

      child: ListTile(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
        },

        leading: Icon(icon, color: AppColors.primary),

        title: Text(
          title,
          style: TextStyle(
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white54,
          size: 18,
        ),
      ),
    );
  }
}
