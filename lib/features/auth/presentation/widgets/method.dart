import 'package:evetick/core/const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Method extends StatelessWidget {
   Method({super.key, required this.url});
  String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        color: AppColor.darkBlue,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withValues(alpha: 0.25),
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Center(child: SvgPicture.asset(url)),
    );
  }
}
