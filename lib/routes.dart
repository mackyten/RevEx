import 'package:flutter/material.dart';
import 'package:revex/features/sign_up.dart';
import 'package:revex/features/welcome_screen.dart';

import 'features/signin_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const WelcomeScreen(),
  '/signin': (context) => const SignInScreen(),
  '/signup': (context) => const SignUpScreen()
};
