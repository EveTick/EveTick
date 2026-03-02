import 'package:evetick/core/const/app_color.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBlue,
      body:Container(
        child: Image.asset('assets/images/signin_back.png')
      )
    );
  }
}