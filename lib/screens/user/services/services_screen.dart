import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/cards/service_card.dart';
import '../../services/service_detail_screen.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final services = [
      {
        'title': 'Martínez Plomería',
        'category': 'Plomería',
        'price': '\$30',
        'rating': 4.8,
        'image': 'assets/images/plumbing.jpg',
      },
      {
        'title': 'CleanPro',
        'category': 'Limpieza',
        'price': '\$45',
        'rating': 4.7,
        'image': 'assets/images/cleaning.jpg',
      },
      {
        'title': 'TechFix',
        'category': 'Computación',
        'price': '\$60',
        'rating': 4.9,
        'image': 'assets/images/computer.jpg',
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Servicios'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar servicios...',
                prefixIcon: const Icon(Icons.search),
              ),
            ),

            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: [
                  _buildCategory('Todos'),
                  _buildCategory('Plomería'),
                  _buildCategory('Limpieza'),
                  _buildCategory('Electricidad'),
                  _buildCategory('Computación'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: services.length,

                itemBuilder: (context, index) {
                  final service = services[index];

                  return ServiceCard(
                    title: service['title'] as String,
                    category: service['category'] as String,
                    price: service['price'] as String,
                    rating: service['rating'] as double,
                    imagePath: service['image'] as String,

                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ServiceDetailScreen(
                            title: service['title'] as String,
                            category: service['category'] as String,
                            price: service['price'] as String,
                            rating: service['rating'] as double,
                            imagePath: service['image'] as String,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 12),

      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Text(
        text,

        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
