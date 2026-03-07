import 'dart:ui';

import 'package:evetick/core/const/app_color.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBlue,
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/onboarding_image1.png', 
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(color: AppColor.darkBlue.withValues(alpha: 0.4)),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.11, 0.5, 0.84],
                  colors: [
                    AppColor.darkBlue.withValues(alpha: 1),
                    AppColor.darkBlue.withValues(alpha: 0.5),
                    AppColor.darkBlue.withValues(alpha: 1),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
