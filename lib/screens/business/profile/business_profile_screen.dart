import 'package:flutter/material.dart';
import '../../auth/login/login_screen.dart';
import '../../../core/constants/app_colors.dart';

class BusinessProfileScreen extends StatefulWidget {
  const BusinessProfileScreen({super.key});
  @override
  State<BusinessProfileScreen> createState() => _BusinessProfileScreenState();
}

class _BusinessProfileScreenState extends State<BusinessProfileScreen> {
  String businessName = 'TechFix Reparaciones';

  String description = 'Especialistas en reparación de computadoras y laptops.';

  String phone = '+52 786 123 4567';

  String address = 'Ciudad Hidalgo, Michoacán';

  String schedule = '8:00 AM - 8:00 PM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Perfil del negocio'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.primary,

              child: const Icon(Icons.business, color: Colors.white, size: 50),
            ),

            const SizedBox(height: 20),

            Text(
              businessName,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              description,
              textAlign: TextAlign.center,

              style: TextStyle(color: AppColors.textSecondary, fontSize: 16),
            ),

            const SizedBox(height: 30),

            _buildInfoTile(icon: Icons.phone, title: 'Teléfono', value: phone),

            _buildInfoTile(
              icon: Icons.location_on,
              title: 'Dirección',
              value: address,
            ),

            _buildInfoTile(
              icon: Icons.access_time,
              title: 'Horario',
              value: schedule,
            ),

            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),

                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,

                    MaterialPageRoute(builder: (_) => const LoginScreen()),

                    (route) => false,
                  );
                },

                child: const Text('Cerrar sesión'),
              ),
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                onPressed: () {
                  final businessController = TextEditingController(
                    text: businessName,
                  );

                  final descriptionController = TextEditingController(
                    text: description,
                  );

                  final phoneController = TextEditingController(text: phone);

                  final addressController = TextEditingController(
                    text: address,
                  );

                  final scheduleController = TextEditingController(
                    text: schedule,
                  );

                  showDialog(
                    context: context,

                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: AppColors.cardBackground,

                        title: const Text(
                          'Editar perfil',

                          style: TextStyle(color: Colors.white),
                        ),

                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,

                            children: [
                              TextField(
                                controller: businessController,

                                style: const TextStyle(color: Colors.white),

                                decoration: const InputDecoration(
                                  hintText: 'Nombre del negocio',
                                ),
                              ),

                              const SizedBox(height: 12),

                              TextField(
                                controller: descriptionController,

                                style: const TextStyle(color: Colors.white),

                                decoration: const InputDecoration(
                                  hintText: 'Descripción',
                                ),
                              ),

                              const SizedBox(height: 12),

                              TextField(
                                controller: phoneController,

                                style: const TextStyle(color: Colors.white),

                                decoration: const InputDecoration(
                                  hintText: 'Teléfono',
                                ),
                              ),

                              const SizedBox(height: 12),

                              TextField(
                                controller: addressController,

                                style: const TextStyle(color: Colors.white),

                                decoration: const InputDecoration(
                                  hintText: 'Dirección',
                                ),
                              ),

                              const SizedBox(height: 12),

                              TextField(
                                controller: scheduleController,

                                style: const TextStyle(color: Colors.white),

                                decoration: const InputDecoration(
                                  hintText: 'Horario',
                                ),
                              ),
                            ],
                          ),
                        ),

                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: const Text('Cancelar'),
                          ),

                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                businessName = businessController.text;

                                description = descriptionController.text;

                                phone = phoneController.text;

                                address = addressController.text;

                                schedule = scheduleController.text;
                              });

                              Navigator.pop(context);

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Perfil actualizado'),
                                ),
                              );
                            },

                            child: const Text('Guardar'),
                          ),
                        ],
                      );
                    },
                  );
                },

                child: const Text('Editar perfil'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Row(
        children: [
          Icon(icon, color: AppColors.primary),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(title, style: TextStyle(color: AppColors.textSecondary)),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
