import 'package:evetick/core/const/app_color.dart';
import 'package:evetick/core/const/widgets/button.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:evetick/features/onboarding/presentation/widget/custom_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/onboarding_image2.png',
              fit: BoxFit.cover,
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
                stops: const [0.17, 0.5, 0.8],
                colors: [
                  AppColor.darkBlue.withValues(alpha: 1),
                  AppColor.darkBlue.withValues(alpha: 0.5),
                  AppColor.darkBlue.withValues(alpha: 1),
                ],
              ),
            ),
          ),
        ),

        Positioned(
          left: 16,
          right: 16,
          bottom: 102,
          top: 500,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Seamless Booking',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Secure your spot in seconds with our \n fast and easy checkout process',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.lightGray,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIndicator(active: currentIndex == 0),
                  SizedBox(width: 5),
                  CustomIndicator(active: currentIndex == 1),
                ],
              ),
              SizedBox(height: 24),
              Button(action: 'Next', width: double.infinity, onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
