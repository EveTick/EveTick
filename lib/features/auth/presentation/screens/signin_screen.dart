import 'package:evetick/core/const/app_color.dart';
import 'package:evetick/core/const/widgets/button.dart';
import 'package:evetick/features/auth/presentation/widgets/method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: InkWell(
              onTap: (){},
              child: Image.asset(
                'assets/images/signin_back.png',
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
                  colors: [
                    AppColor.darkBlue.withValues(alpha: 1),
                    AppColor.darkBlue.withValues(alpha: 0.8),
                    AppColor.darkBlue.withValues(alpha: 0.85),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 56.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColor.white,
                      size: 24,
                    ),
                  ),
                  SizedBox(height: 72),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset('assets/images/dark_logo.svg'),
                  ),
                  SizedBox(height: 72),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Enter your email to continue',
                      style: TextStyle(
                        color: AppColor.lightGray,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Email Address',
                    style: TextStyle(
                      color: AppColor.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    style: TextStyle(color: AppColor.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: AppColor.fourthBlue,
                      hintText: 'hello@evetick.com',
                      hintStyle: TextStyle(
                        color: AppColor.lightGray,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: AppColor.lightGray,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Button(action: 'Continue', width: double.infinity),
                  ),
                  SizedBox(height: 72),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: AppColor.lightGray, thickness: 1),
                      ),
                      Text(
                        ' or ',
                        style: TextStyle(
                          color: AppColor.lightGray,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Expanded(
                        child: Divider(color: AppColor.lightGray, thickness: 1),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Method(url: 'assets/images/google.svg'),
                      ),
                      SizedBox(width: 32),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Method(url: 'assets/images/facebook.svg'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
