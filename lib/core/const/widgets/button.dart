import 'package:evetick/core/const/app_color.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.action, required this.width, this.onTap});

  String action;
  double width;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          action,
          style: TextStyle(
            color: AppColor.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
