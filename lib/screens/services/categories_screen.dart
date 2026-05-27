import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import 'services_catalog_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      {'title': 'Plomería', 'icon': Icons.plumbing},
      {'title': 'Electricidad', 'icon': Icons.electrical_services},
      {'title': 'Limpieza', 'icon': Icons.cleaning_services},
      {'title': 'Computación', 'icon': Icons.computer},
      {'title': 'Jardinería', 'icon': Icons.yard},
      {'title': 'Cerrajería', 'icon': Icons.key},
      {'title': 'Mecánica', 'icon': Icons.car_repair},
      {'title': 'Pintura', 'icon': Icons.format_paint},
    ];

    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Categorías')),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: GridView.builder(
          itemCount: categories.length,

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
          ),

          itemBuilder: (context, index) {
            final category = categories[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ServicesCatalogScreen(),
                  ),
                );
              },

              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.cardBackground,
                  borderRadius: BorderRadius.circular(24),
                ),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      category['icon'] as IconData,
                      color: AppColors.primary,
                      size: 50,
                    ),

                    const SizedBox(height: 20),

                    Text(
                      category['title'] as String,

                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
