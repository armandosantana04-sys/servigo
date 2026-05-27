import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../widgets/inputs/custom_text_field.dart';
import '../../../widgets/buttons/primary_button.dart';
import '../../../widgets/buttons/social_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/routes/app_routes.dart';
import '../../user/home/home_screen.dart';
import '../../main_navigation/main_navigation_screen.dart';
import '../../user/navigation/user_navigation_screen.dart';
import '../../business/navigation/business_navigation_screen.dart';
import '../privacy_policy_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

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

              child: Form(
                key: _formKey,

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
                          onPressed: () {
                            showDialog(
                              context: context,

                              builder: (context) {
                                return AlertDialog(
                                  backgroundColor: AppColors.cardBackground,

                                  title: const Text(
                                    'Centro de ayuda',

                                    style: TextStyle(color: Colors.white),
                                  ),

                                  content: const Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: [
                                      Text(
                                        '¿Necesitas ayuda con la aplicación?',

                                        style: TextStyle(color: Colors.white70),
                                      ),

                                      SizedBox(height: 20),

                                      Text(
                                        'Contacto:\nsoporte@servigo.com',

                                        textAlign: TextAlign.center,

                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),

                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },

                                      child: const Text('Cerrar'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
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
                          onPressed: () {
                            Navigator.push(
                              context,

                              MaterialPageRoute(
                                builder: (_) => const PrivacyPolicyScreen(),
                              ),
                            );
                          },
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

                          CustomTextField(
                            hintText: 'Correo o usuario',
                            icon: Icons.person_outline,
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Ingresa tu correo o usuario';
                              }

                              if (value.length < 4) {
                                return 'Mínimo 4 caracteres';
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
                          const SizedBox(height: 12),

                          Align(
                            alignment: Alignment.centerRight,

                            child: TextButton(
                              onPressed: () {
                                final resetController = TextEditingController();

                                showDialog(
                                  context: context,

                                  builder: (context) {
                                    return AlertDialog(
                                      backgroundColor: AppColors.cardBackground,

                                      title: const Text(
                                        'Recuperar contraseña',

                                        style: TextStyle(color: Colors.white),
                                      ),

                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,

                                        children: [
                                          TextField(
                                            controller: resetController,

                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),

                                            decoration: InputDecoration(
                                              hintText: 'Ingresa tu correo',

                                              hintStyle: const TextStyle(
                                                color: Colors.white54,
                                              ),
                                            ),
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
                                            Navigator.pop(context);

                                            ScaffoldMessenger.of(
                                              context,
                                            ).showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Instrucciones enviadas a ${resetController.text}',
                                                ),
                                              ),
                                            );
                                          },

                                          child: const Text('Enviar'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              child: const Text('¿Olvidaste tu contraseña?'),
                            ),
                          ),
                          const SizedBox(height: 30),

                          PrimaryButton(
                            text: 'Iniciar sesión',
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const UserNavigationScreen(),
                                  ),
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 30),
                          const SizedBox(height: 16),

                          const Text(
                            'Modo desarrollador',

                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),

                          const SizedBox(height: 12),

                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,

                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const UserNavigationScreen(),
                                      ),
                                    );
                                  },

                                  child: const Text('Usuario'),
                                ),
                              ),

                              const SizedBox(width: 12),

                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,

                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const BusinessNavigationScreen(),
                                      ),
                                    );
                                  },

                                  child: const Text('Negocio'),
                                ),
                              ),
                            ],
                          ),

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
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Inicio con Google próximamente',
                                  ),
                                ),
                              );
                            },
                          ),

                          const SizedBox(height: 16),

                          SocialButton(
                            text: 'Continuar con Apple',
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Inicio con Apple próximamente',
                                  ),
                                ),
                              );
                            },
                          ),

                          const SizedBox(height: 16),

                          SocialButton(
                            text: 'Inicio con número',
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Inicio con número próximamente',
                                  ),
                                ),
                              );
                            },
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
      ),
    );
  }
}
