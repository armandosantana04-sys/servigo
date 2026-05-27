import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/buttons/primary_button.dart';
import 'booking_screen.dart';

class ServiceDetailScreen extends StatelessWidget {
  final String title;
  final String category;
  final String price;
  final double rating;
  final String imagePath;

  const ServiceDetailScreen({
    super.key,
    required this.title,
    required this.category,
    required this.price,
    required this.rating,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: Text(title)),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(24),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Expanded(
                        child: Text(
                          title,

                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),

                        decoration: BoxDecoration(
                          color: AppColors.primary.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Text(
                          price,

                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),

                      const SizedBox(width: 6),

                      Text(
                        rating.toString(),

                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(width: 20),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 6,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: const Text(
                          'Disponible',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),

                  Text(
                    category,

                    style: const TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    'Descripción',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 14),

                  const Text(
                    'Servicio profesional con atención rápida y garantía de calidad. Contamos con experiencia y disponibilidad para atender servicios dentro de tu localidad.',

                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    'Información',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  _infoTile(Icons.location_on, 'Ciudad Hidalgo, Michoacán'),

                  _infoTile(Icons.access_time, 'Disponible 24/7'),

                  _infoTile(Icons.phone, '+52 786 123 4567'),

                  const SizedBox(height: 40),

                  Row(
                    children: [
                      Expanded(
                        child: PrimaryButton(
                          text: 'Reservar servicio',

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    BookingScreen(serviceTitle: title),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},

                          icon: const Icon(Icons.message),

                          label: const Text('Enviar mensaje'),

                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,

                            side: BorderSide(color: AppColors.primary),

                            padding: const EdgeInsets.symmetric(vertical: 18),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoTile(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),

          const SizedBox(width: 14),

          Text(
            text,

            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
