import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Tu ubicación',
              style: TextStyle(color: AppColors.textSecondary, fontSize: 14),
            ),

            const SizedBox(height: 6),

            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: AppColors.primary,
                  size: 18,
                ),

                const SizedBox(width: 6),

                Text(
                  'Ciudad Hidalgo, Michoacán',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),

        Container(
          padding: const EdgeInsets.all(3),

          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primary, width: 2),

            shape: BoxShape.circle,
          ),

          child: const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ),
      ],
    );
  }
}
