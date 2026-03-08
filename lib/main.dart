import 'package:evetick/features/auth/presentation/screens/sign_in.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen2.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
