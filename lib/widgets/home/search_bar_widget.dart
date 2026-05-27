import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: TextField(
        style: const TextStyle(color: Colors.white),

        decoration: InputDecoration(
          hintText: 'Buscar servicios...',
          hintStyle: TextStyle(color: AppColors.textSecondary),

          prefixIcon: const Icon(Icons.search, color: Colors.white70),

          suffixIcon: Container(
            margin: const EdgeInsets.all(8),

            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(14),
            ),

            child: const Icon(Icons.tune, color: Colors.white),
          ),

          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
        ),
      ),
    );
  }
}
