import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Política de privacidad')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Política de privacidad',

              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              '''
En ServiGo valoramos la privacidad y seguridad de nuestros usuarios.

La información proporcionada durante el registro será utilizada únicamente para mejorar la experiencia dentro de la aplicación y facilitar la conexión entre clientes y negocios.

ServiGo no comparte información personal con terceros sin autorización previa del usuario.

Los datos registrados podrán utilizarse para:

• Gestión de cuentas
• Comunicación entre usuarios y negocios
• Reservas de servicios
• Mejora de la experiencia dentro de la plataforma

El usuario es responsable de mantener segura su información de acceso.

Esta aplicación se encuentra actualmente en fase de desarrollo académico.
              ''',

              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
