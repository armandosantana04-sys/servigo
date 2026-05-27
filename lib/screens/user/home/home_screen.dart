import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

import '../../../widgets/home/home_header.dart';
import '../../../widgets/home/search_bar_widget.dart';
import '../../../widgets/home/section_title.dart';
import '../../../widgets/home/popular_business_card.dart';
import '../../../widgets/home/nearby_service_card.dart';

import '../../../widgets/cards/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),

          children: [
            const HomeHeader(),

            const SizedBox(height: 30),

            const SearchBarWidget(),

            const SizedBox(height: 35),

            const SectionTitle(title: 'Categorías'),

            const SizedBox(height: 20),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: const [
                  CategoryCard(
                    icon: Icons.plumbing,
                    title: 'Plomería',
                  ),

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

                  CategoryCard(
                    icon: Icons.computer,
                    title: 'Computación',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const SectionTitle(
              title: 'Empresas populares',
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 280,

              child: ListView(
                scrollDirection: Axis.horizontal,

                children: const [
                  PopularBusinessCard(
                    name: 'Martínez Plomería',
                    category: 'Plomería',
                    rating: 4.8,
                  ),

                  PopularBusinessCard(
                    name: 'TechFix',
                    category: 'Computación',
                    rating: 4.9,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            const SectionTitle(
              title: 'Servicios cercanos',
            ),

            const SizedBox(height: 20),

            const NearbyServiceCard(
              title: 'Plomero disponible',
              distance: '1.2 km',
              available: true,
            ),

            const NearbyServiceCard(
              title: 'Electricista profesional',
              distance: '2.8 km',
              available: false,
            ),

            const NearbyServiceCard(
              title: 'Servicio de limpieza',
              distance: '900 m',
              available: true,
            ),
          ],
        ),
      ),
    );
  }
}