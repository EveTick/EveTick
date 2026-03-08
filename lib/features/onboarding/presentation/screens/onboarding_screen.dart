import 'package:evetick/core/const/app_color.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen2.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen1.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

PageController pageController = PageController();
int currentIndex = 0;

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBlue,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              controller: pageController,
              children: [OnboardingScreen1(), OnboardingScreen2()],
            ),
          ),
        ],
      ),
    );
  }
}
