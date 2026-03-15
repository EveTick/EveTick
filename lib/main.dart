import 'package:evetick/features/auth/presentation/screens/sign_in.dart';
import 'package:evetick/features/onboarding/data/onboarding_repository_impl.dart';
import 'package:evetick/features/onboarding/domain/onboarding_repository.dart';
import 'package:evetick/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen2.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:evetick/features/onboarding/presentation/screens/onboarding_screen1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingCubit>(
          create: (context) => OnboardingCubit(OnboardingRepositoryImpl()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnboardingScreen(),
      ),
    );
  }
}
