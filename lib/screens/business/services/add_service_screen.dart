import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/inputs/custom_text_field.dart';
import '../../../widgets/buttons/primary_button.dart';

class AddServiceScreen extends StatelessWidget {
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Agregar servicio')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const CustomTextField(
              hintText: 'Nombre del servicio',
              icon: Icons.home_repair_service,
            ),

            const SizedBox(height: 20),

            const CustomTextField(hintText: 'Categoría', icon: Icons.category),

            const SizedBox(height: 20),

            const CustomTextField(hintText: 'Precio', icon: Icons.attach_money),

            const SizedBox(height: 20),

            const CustomTextField(
              hintText: 'Descripción',
              icon: Icons.description,
            ),

            const SizedBox(height: 40),

            PrimaryButton(text: 'Guardar servicio', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
