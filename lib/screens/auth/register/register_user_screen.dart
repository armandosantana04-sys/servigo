import 'package:flutter/material.dart';
import 'package:servigo/screens/user/navigation/user_navigation_screen.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/inputs/custom_text_field.dart';
import '../../../widgets/buttons/primary_button.dart';

class RegisterUserScreen extends StatefulWidget {
  const RegisterUserScreen({super.key});

  @override
  State<RegisterUserScreen> createState() => _RegisterUserScreenState();
}

class _RegisterUserScreenState extends State<RegisterUserScreen> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final lastNameController = TextEditingController();

  final emailController = TextEditingController();
  final confirmEmailController = TextEditingController();

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final phoneController = TextEditingController();

  final addressController = TextEditingController();
  final colonyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(title: const Text('Registro de usuario')),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Nombre',
                icon: Icons.person_outline,
                controller: nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu nombre';
                  }

                  if (value.length < 3) {
                    return 'Mínimo 3 caracteres';
                  }

                  return null;
                },
              ),

              const SizedBox(height: 20),

              CustomTextField(
                hintText: 'Apellido',
                icon: Icons.person_outline,
                controller: lastNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Ingresa tu apellido';
                  }

                  if (value.length < 3) {
                    return 'Mínimo 3 caracteres';
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
                hintText: 'Número de teléfono',
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

              const SizedBox(height: 40),

              PrimaryButton(
                text: 'Registrarse',

                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushAndRemoveUntil(
                      context,

                      MaterialPageRoute(
                        builder: (_) => const UserNavigationScreen(),
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
