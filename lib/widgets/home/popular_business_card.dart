import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class PopularBusinessCard extends StatelessWidget {
  final String name;
  final String category;
  final double rating;

  const PopularBusinessCard({
    super.key,
    required this.name,
    required this.category,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      margin: const EdgeInsets.only(right: 18),

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 130,

            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.circular(20),
            ),

            child: const Center(
              child: Icon(Icons.business, color: Colors.white54, size: 50),
            ),
          ),

          const SizedBox(height: 18),

          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(category, style: TextStyle(color: AppColors.textSecondary)),

          const SizedBox(height: 14),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),

              const SizedBox(width: 6),

              Text(
                rating.toString(),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
