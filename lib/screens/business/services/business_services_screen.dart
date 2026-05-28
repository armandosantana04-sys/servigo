import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class BusinessServicesScreen extends StatefulWidget {
  const BusinessServicesScreen({super.key});
  @override
  State<BusinessServicesScreen> createState() => _BusinessServicesScreenState();
}

class _BusinessServicesScreenState extends State<BusinessServicesScreen> {
  final List<Map<String, String>> services = [
    {'title': 'Plomería general', 'category': 'Hogar', 'price': '\$300'},

    {
      'title': 'Instalaciones eléctricas',
      'category': 'Electricista',
      'price': '\$500',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Mis servicios'),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          final titleController = TextEditingController();
          final categoryController = TextEditingController();
          final priceController = TextEditingController();

          showDialog(
            context: context,

            builder: (context) {
              return AlertDialog(
                backgroundColor: AppColors.cardBackground,

                title: const Text(
                  'Agregar servicio',
                  style: TextStyle(color: Colors.white),
                ),

                content: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    TextField(
                      controller: titleController,

                      style: const TextStyle(color: Colors.white),

                      decoration: const InputDecoration(hintText: 'Nombre'),
                    ),

                    const SizedBox(height: 12),

                    TextField(
                      controller: categoryController,

                      style: const TextStyle(color: Colors.white),

                      decoration: const InputDecoration(hintText: 'Categoría'),
                    ),

                    const SizedBox(height: 12),

                    TextField(
                      controller: priceController,

                      style: const TextStyle(color: Colors.white),

                      decoration: const InputDecoration(hintText: 'Precio'),
                    ),
                  ],
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
                        services.add({
                          'title': titleController.text,
                          'category': categoryController.text,
                          'price': '\$${priceController.text}',
                        });
                      });

                      Navigator.pop(context);

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Servicio agregado')),
                      );
                    },

                    child: const Text('Guardar'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),

        itemCount: services.length,

        itemBuilder: (context, index) {
          final service = services[index];

          return _buildServiceCard(
            title: service['title']!,
            category: service['category']!,
            price: service['price']!,
            onEdit: () {
              final titleController = TextEditingController(
                text: service['title'],
              );

              final categoryController = TextEditingController(
                text: service['category'],
              );

              final priceController = TextEditingController(
                text: service['price']!.replaceAll('\$', ''),
              );

              showDialog(
                context: context,

                builder: (context) {
                  return AlertDialog(
                    backgroundColor: AppColors.cardBackground,

                    title: const Text(
                      'Editar servicio',

                      style: TextStyle(color: Colors.white),
                    ),

                    content: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: [
                        TextField(
                          controller: titleController,

                          style: const TextStyle(color: Colors.white),

                          decoration: const InputDecoration(hintText: 'Nombre'),
                        ),

                        const SizedBox(height: 12),

                        TextField(
                          controller: categoryController,

                          style: const TextStyle(color: Colors.white),

                          decoration: const InputDecoration(
                            hintText: 'Categoría',
                          ),
                        ),

                        const SizedBox(height: 12),

                        TextField(
                          controller: priceController,

                          style: const TextStyle(color: Colors.white),

                          decoration: const InputDecoration(hintText: 'Precio'),
                        ),
                      ],
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
                            services[index] = {
                              'title': titleController.text,
                              'category': categoryController.text,
                              'price': '\$${priceController.text}',
                            };
                          });

                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Servicio actualizado'),
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

            onDelete: () {
              setState(() {
                services.removeAt(index);
              });

              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Servicio eliminado')),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildServiceCard({
    required String title,
    required String category,
    required String price,
    required VoidCallback onDelete,
    required VoidCallback onEdit,
  }) {
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
          Text(
            title,
            style: TextStyle(
              color: AppColors.textPrimary,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          Text(category, style: TextStyle(color: AppColors.textSecondary)),

          const SizedBox(height: 10),

          Text(
            price,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          const SizedBox(height: 20),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onEdit,

                  child: const Text('Editar'),
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: ElevatedButton(
                  onPressed: onDelete,

                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),

                  child: const Text('Eliminar'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
