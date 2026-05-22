import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryCard({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          Icon(icon, color: AppColors.primary, size: 32),

          const SizedBox(height: 12),

          Text(
            title,
            textAlign: TextAlign.center,

            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
