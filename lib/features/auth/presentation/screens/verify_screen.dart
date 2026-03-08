import 'package:evetick/core/const/app_color.dart';
import 'package:evetick/core/const/widgets/button.dart';
import 'package:evetick/features/auth/presentation/widgets/digit_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBlue,
      body: Padding(
        padding:  EdgeInsets.only(left: 16, right: 16, top: 56),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios, color: AppColor.white, size: 24),
                SizedBox(width: 140),
                Text(
                  'Verify',
                  style: TextStyle(
                    color: AppColor.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 56),
            SizedBox(
              height: 89,
              child: SvgPicture.asset('assets/images/dark_logo.svg'),
              ),
            SizedBox(height: 56),
            Text(
              'Verifiaction Code',
              style: TextStyle(
                color: AppColor.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: AppColor.lightGray,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  height: 1.45
                ),
                children: [
                  TextSpan(
                    text: 'Check your email for the code sent \n'
                    ),
                    TextSpan(
                    
                      text: 'to '
                    ),
                    TextSpan(
                      text: 'hello@evetick.com',
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold,
                      )
                    )
                ]      
              )
              ),
              SizedBox(height: 56,),
              DigitFrame(),
              SizedBox(height: 24,),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: AppColor.lightGray,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                      text: 'Didn\'t receive the code?',
                    ),
                    TextSpan(
                      text: 'Resend',
                      style: TextStyle(
                        color: AppColor.orange,
                        fontWeight: FontWeight.bold
                      ),
                      onEnter: (event) {},
                    )
                  ]
                )
              ),
              SizedBox(height: 164,),
              Button(action: 'Confirm', width: double.infinity, onTap: () {})

          ],
        ),
      ),
    );
  }
}
