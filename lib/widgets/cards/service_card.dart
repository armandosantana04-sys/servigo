import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../buttons/primary_button.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String category;
  final String price;
  final double rating;

  const ServiceCard({
    super.key,
    required this.title,
    required this.category,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(24),
      ),

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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
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
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          Text(
            category,

            style: const TextStyle(
              color: AppColors.textSecondary,
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 20),

              const SizedBox(width: 6),

              Text(
                rating.toString(),

                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: PrimaryButton(text: 'Reservar', onPressed: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
