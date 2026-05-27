import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/inputs/custom_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Cambiar contraseña')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Contraseña actual',
              icon: Icons.lock_outline,
              obscureText: true,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Nueva contraseña',
              icon: Icons.lock_reset_outlined,
              obscureText: true,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Confirmar contraseña',
              icon: Icons.lock_outline,
              obscureText: true,
            ),

            const SizedBox(height: 40),

            PrimaryButton(text: 'Actualizar contraseña', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
