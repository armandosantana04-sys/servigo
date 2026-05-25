import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../widgets/inputs/custom_text_field.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/buttons/social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/routes/app_routes.dart';
import '../../home/home_screen.dart';
import '../../main_navigation/main_navigation_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),

          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 100,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text(
                        'ServiGo',

                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      TextButton(
                        onPressed: () {},

                        child: const Text('¿Necesitas ayuda?'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),
                  // Bienvenida
                  Text(
                    'Bienvenido a ServiGo',
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    'Accede para gestionar tus servicios.',
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.selectAccountType,
                          );
                        },

                        child: const Text('Registrarse'),
                      ),

                      const SizedBox(width: 10),

                      Text('•', style: TextStyle(color: Colors.grey)),

                      const SizedBox(width: 10),

                      TextButton(
                        onPressed: () {},

                        child: const Text('Política de privacidad'),
                      ),
                    ],
                  ),

                  Container(
                    width: double.infinity,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground,

                      borderRadius: BorderRadius.circular(28),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),

                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            width: 110,
                            height: 110,

                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,

                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primary.withOpacity(0.4),
                                  blurRadius: 20,
                                  spreadRadius: 4,
                                ),
                              ],
                            ),
                            child: const Icon(
                              FontAwesomeIcons.userGear,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),

                        const SizedBox(height: 30),

                        const CustomTextField(
                          hintText: 'Correo o usuario',
                          icon: Icons.person_outline,
                        ),
                        const SizedBox(height: 20),

                        const CustomTextField(
                          hintText: 'Contraseña',
                          icon: Icons.lock_outline,
                          obscureText: true,
                        ),
                        const SizedBox(height: 12),

                        Align(
                          alignment: Alignment.centerRight,

                          child: TextButton(
                            onPressed: () {},

                            child: const Text('¿Olvidaste tu contraseña?'),
                          ),
                        ),
                        const SizedBox(height: 30),

                        PrimaryButton(
                          text: 'Iniciar sesión',

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MainNavigationScreen(),
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 30),

                        Row(
                          children: [
                            Expanded(
                              child: Divider(color: Colors.grey.shade700),
                            ),

                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text('o'),
                            ),

                            Expanded(child: Divider(color: Colors.grey)),
                          ],
                        ),

                        const SizedBox(height: 30),

                        SocialButton(
                          text: 'Continuar con Google',
                          onPressed: () {},
                        ),

                        const SizedBox(height: 16),

                        SocialButton(
                          text: 'Continuar con Apple',
                          onPressed: () {},
                        ),

                        const SizedBox(height: 16),

                        SocialButton(
                          text: 'Inicio con número',
                          onPressed: () {},
                        ),
                        const SizedBox(height: 30),

                        Text(
                          'Al iniciar sesión aceptas los términos de uso y la política de privacidad de ServiGo.',

                          textAlign: TextAlign.center,

                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
