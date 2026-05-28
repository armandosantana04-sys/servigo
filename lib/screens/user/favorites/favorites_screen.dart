import 'package:flutter/material.dart';
import '../../../data/favorites_data.dart';
import '../../../../core/constants/app_colors.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Favoritos'),
      ),

      body: FavoritesData.favorites.isEmpty
          ? Center(
              child: Text(
                'No tienes favoritos aún',

                style: TextStyle(color: AppColors.textSecondary, fontSize: 18),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(24),

              itemCount: FavoritesData.favorites.length,

              itemBuilder: (context, index) {
                final favorite = FavoritesData.favorites[index];

                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  padding: const EdgeInsets.all(18),

                  decoration: BoxDecoration(
                    color: AppColors.cardBackground,
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),

                        child: Image.asset(
                          favorite['image'],

                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 16),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              favorite['title'],

                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              favorite['category'],

                              style: TextStyle(color: AppColors.textSecondary),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              favorite['price'],

                              style: const TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
