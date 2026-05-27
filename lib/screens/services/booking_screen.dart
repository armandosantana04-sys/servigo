import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/buttons/primary_button.dart';

class BookingScreen extends StatelessWidget {
  final String serviceTitle;

  const BookingScreen({super.key, required this.serviceTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Reservar servicio')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              serviceTitle,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Completa la información para reservar el servicio.',

              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),

            const SizedBox(height: 40),

            _buildField('Fecha'),
            const SizedBox(height: 20),

            _buildField('Hora'),
            const SizedBox(height: 20),

            _buildField('Dirección'),
            const SizedBox(height: 20),

            _buildField('Comentarios adicionales', maxLines: 4),

            const SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    text: 'Confirmar reserva',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildField(String hint, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,

      decoration: InputDecoration(hintText: hint),
    );
  }
}
