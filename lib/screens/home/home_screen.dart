import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/cards/category_card.dart';
import '../../widgets/cards/service_card.dart';
import '../../widgets/cards/promo_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        'Hola, Armando 👋',

                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        'Encuentra el servicio ideal',

                        style: TextStyle(
                          color: AppColors.textSecondary,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  CircleAvatar(
                    radius: 26,
                    backgroundColor: AppColors.primary,

                    child: Icon(Icons.person, color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              TextField(
                decoration: InputDecoration(
                  hintText: 'Buscar servicios...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              const SizedBox(height: 30),

              SizedBox(
                height: 160,

                child: ListView(
                  scrollDirection: Axis.horizontal,

                  children: const [
                    PromoCard(
                      title: '20% OFF',
                      subtitle: 'En servicios de limpieza esta semana',
                    ),

                    PromoCard(
                      title: 'Servicio Express',
                      subtitle: 'Técnicos disponibles 24/7',
                    ),
                  ],
                ),
              ),
              Text(
                'Categorías',

                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,

                child: Row(
                  children: [
                    CategoryCard(icon: Icons.plumbing, title: 'Plomería'),

                    SizedBox(width: 16),

                    CategoryCard(
                      icon: Icons.electrical_services,
                      title: 'Electricista',
                    ),

                    SizedBox(width: 16),

                    CategoryCard(
                      icon: Icons.cleaning_services,
                      title: 'Limpieza',
                    ),

                    SizedBox(width: 16),

                    CategoryCard(icon: Icons.computer, title: 'Computación'),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              Text(
                'Servicios populares',

                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
