import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/inputs/custom_text_field.dart';
import '../../../widgets/buttons/primary_button.dart';

class RegisterUserScreen extends StatelessWidget {
  const RegisterUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Registro de usuario')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Nombre',
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Apellido',
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Correo',
              icon: Icons.email_outlined,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Confirmar correo',
              icon: Icons.email_outlined,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Contraseña',
              icon: Icons.lock_outline,
              obscureText: true,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Confirmar contraseña',
              icon: Icons.lock_outline,
              obscureText: true,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Número de teléfono',
              icon: Icons.phone_outlined,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Dirección',
              icon: Icons.location_on_outlined,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Colonia',
              icon: Icons.map_outlined,
            ),

            const SizedBox(height: 40),

            PrimaryButton(text: 'Crear cuenta', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
