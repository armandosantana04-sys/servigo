import 'package:flutter/material.dart';
import 'package:servigo/screens/business/navigation/business_navigation_screen.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/inputs/custom_text_field.dart';

class RegisterBusinessScreen extends StatefulWidget {
  const RegisterBusinessScreen({super.key});

  @override
  State<RegisterBusinessScreen> createState() => _RegisterBusinessScreenState();
}

class _RegisterBusinessScreenState extends State<RegisterBusinessScreen> {
  final _formKey = GlobalKey<FormState>();

  final businessNameController = TextEditingController();
  final categoryController = TextEditingController();
  final descriptionController = TextEditingController();

  final emailController = TextEditingController();
  final confirmEmailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final phoneController = TextEditingController();

  final addressController = TextEditingController();
  final colonyController = TextEditingController();

  final scheduleController = TextEditingController();
  final servicesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Registro de negocio')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Nombre del negocio',
                icon: Icons.business,
                controller: businessNameController,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa el nombre del negocio';
                  }

                  if (value.length < 3) {
                    return 'Mínimo 3 caracteres';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Categoría',
                icon: Icons.category_outlined,
                controller: categoryController,

                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa una categoría';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Descripción',
                icon: Icons.description_outlined,
                controller: descriptionController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa una descripción';
                  }

                  if (value.length < 10) {
                    return 'Descripción muy corta';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Correo',
                icon: Icons.email_outlined,
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu correo';
                  }

                  if (!value.contains('@')) {
                    return 'Correo inválido';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Confirmar correo',
                icon: Icons.email_outlined,
                controller: confirmEmailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirma tu correo';
                  }

                  if (value != emailController.text) {
                    return 'Los correos no coinciden';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Contraseña',
                icon: Icons.lock_outline,
                obscureText: true,
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu contraseña';
                  }

                  if (value.length < 8) {
                    return 'Mínimo 8 caracteres';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Confirmar contraseña',
                icon: Icons.lock_outline,
                obscureText: true,
                controller: confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Confirma tu contraseña';
                  }

                  if (value != passwordController.text) {
                    return 'Las contraseñas no coinciden';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Número telefónico',
                icon: Icons.phone_outlined,
                controller: phoneController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu número de teléfono';
                  }

                  if (value.length < 10) {
                    return 'Número inválido';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Dirección',
                icon: Icons.location_on_outlined,
                controller: addressController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu dirección';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Colonia',
                icon: Icons.map_outlined,
                controller: colonyController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu colonia';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Horario de atención',
                icon: Icons.access_time,
                controller: scheduleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu horario de atención';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Servicios ofrecidos',
                icon: Icons.home_repair_service,
                controller: servicesController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa los servicios ofrecidos';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 40),

              PrimaryButton(
                text: 'Registrar empresa',

                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                      context,

                      MaterialPageRoute(
                        builder: (_) => const BusinessNavigationScreen(),
                      ),

                      (route) => false,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
