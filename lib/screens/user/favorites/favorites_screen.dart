import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Favoritos')),

      body: Center(
        child: Text(
          'No tienes favoritos aún',
          style: TextStyle(color: AppColors.textSecondary, fontSize: 18),
        ),
      ),
    );
  }
}
