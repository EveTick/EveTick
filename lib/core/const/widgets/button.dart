import 'package:evetick/core/const/app_color.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
   Button({super.key, required this.action, required this.width});

  String action;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: width,
      decoration: BoxDecoration(
        color: AppColor.orange,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          action,
          style: TextStyle(
            color: AppColor.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    )
    ;
  }
}