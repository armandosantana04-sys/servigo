import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class NearbyServiceCard extends StatelessWidget {
  final String title;
  final String distance;
  final bool available;

  const NearbyServiceCard({
    super.key,
    required this.title,
    required this.distance,
    required this.available,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(22),
      ),

      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),

            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.15),
              borderRadius: BorderRadius.circular(18),
            ),

            child: const Icon(
              Icons.home_repair_service,
              color: AppColors.primary,
            ),
          ),

          const SizedBox(width: 18),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  distance,
                  style: TextStyle(color: AppColors.textSecondary),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),

            decoration: BoxDecoration(
              color: available
                  ? Colors.green.withOpacity(0.15)
                  : Colors.red.withOpacity(0.15),

              borderRadius: BorderRadius.circular(18),
            ),

            child: Text(
              available ? 'Disponible' : 'Ocupado',
              style: TextStyle(
                color: available ? Colors.green : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
