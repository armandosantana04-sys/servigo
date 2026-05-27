import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/inputs/custom_text_field.dart';
import '../../../widgets/buttons/primary_button.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Editar perfil')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.primary,

              child: const Icon(Icons.person, color: Colors.white, size: 50),
            ),

            const SizedBox(height: 30),

            const CustomTextField(
              hintText: 'Nombre',
              icon: Icons.person_outline,
            ),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Correo electrónico',
              icon: Icons.email_outlined,
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

            const SizedBox(height: 40),

            PrimaryButton(text: 'Guardar cambios', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
