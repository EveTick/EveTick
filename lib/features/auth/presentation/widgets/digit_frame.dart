import 'package:evetick/core/const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class DigitFrame extends StatelessWidget {
  const DigitFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialPinField(
      length: 4,
      initialValue: '----',
      theme: MaterialPinTheme(
        shape: MaterialPinShape.outlined,
        cellSize: Size(48, 60),
        borderRadius: BorderRadius.circular(12),
        fillColor: AppColor.secondryBlue,
        borderColor: AppColor.gray,
        focusedBorderColor: AppColor.orange,
        focusedFillColor: AppColor.secondryBlue,
        completeFillColor: AppColor.secondryBlue,
        completeBorderColor: AppColor.orange,
        filledFillColor: AppColor.secondryBlue,
        filledBorderColor: AppColor.orange,
        borderWidth: 2,
        textStyle: TextStyle(
          color: AppColor.white,
          fontSize: 18
        ),

        spacing: 16,
      ),
    );
  }
}
