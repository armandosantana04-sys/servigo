import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/inputs/custom_text_field.dart';

class RegisterBusinessScreen extends StatelessWidget {
  const RegisterBusinessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Registro de negocio')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Nombre del negocio',
              icon: Icons.business,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Categoría',
              icon: Icons.category_outlined,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Descripción',
              icon: Icons.description_outlined,
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
              hintText: 'Número telefónico',
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

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Horario de atención',
              icon: Icons.access_time,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Servicios ofrecidos',
              icon: Icons.home_repair_service,
            ),

            const SizedBox(height: 40),

            PrimaryButton(text: 'Registrar negocio', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
