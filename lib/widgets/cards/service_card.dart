import 'package:flutter/material.dart';
import '../../data/favorites_data.dart';
import '../../core/constants/app_colors.dart';
import '../buttons/primary_button.dart';

class ServiceCard extends StatefulWidget {
  final String title;
  final String category;
  final String price;
  final double rating;
  final String imagePath;
  final VoidCallback onTap;

  ServiceCard({
    super.key,
    required this.title,
    required this.category,
    required this.price,
    required this.rating,
    required this.imagePath,
    required this.onTap,
  });
  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,

      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),

        margin: const EdgeInsets.only(bottom: 20),

        padding: const EdgeInsets.all(18),

        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(24),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Align(
              alignment: Alignment.topRight,

              child: IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;

                    if (isFavorite) {
                      FavoritesData.favorites.add({
                        'title': widget.title,
                        'category': widget.category,
                        'price': widget.price,
                        'image': widget.imagePath,
                        'rating': widget.rating,
                      });
                    } else {
                      FavoritesData.favorites.removeWhere(
                        (item) => item['title'] == widget.title,
                      );
                    }
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        isFavorite
                            ? 'Agregado a favoritos'
                            : 'Eliminado de favoritos',
                      ),
                    ),
                  );
                },

                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,

                  color: isFavorite ? Colors.red : Colors.white,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: Image.asset(
                widget.imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Expanded(
                  child: Text(
                    widget.title,

                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 14),

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
                    widget.price,

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
              widget.category,

              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 14),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),

              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.08),
                borderRadius: BorderRadius.circular(20),
              ),

              child: const Text(
                'Disponible',

                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),

                const SizedBox(width: 6),

                Text(
                  widget.rating.toString(),

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
                  child: PrimaryButton(
                    text: 'Ver detalles',
                    onPressed: widget.onTap,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
