import 'package:flutter/material.dart';

import '../../screens/auth/login/login_screen.dart';
import '../../screens/auth/register/select_account_type_screen.dart';
import '../../screens/auth/register/register_user_screen.dart';
import '../../screens/auth/register/register_business_screen.dart';
import '../../screens/user/home/home_screen.dart';

class AppRoutes {
  static const String login = '/login';
  static const String selectAccountType = '/select-account-type';
  static const String registerUser = '/register-user';
  static const String registerBusiness = '/register-business';
  static const String home = '/home';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginScreen(),

    selectAccountType: (context) => const SelectAccountTypeScreen(),

    registerUser: (context) => const RegisterUserScreen(),

    registerBusiness: (context) => const RegisterBusinessScreen(),

    home: (context) => const HomeScreen(),
  };
}
