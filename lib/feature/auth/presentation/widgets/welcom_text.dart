import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/theme/app_text_style.dart';

class WelcomText extends StatelessWidget {
  const WelcomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Welcome", style: AppTextStyle.font600Semibold28Inter),
           SizedBox(height: 5.h),
           Text(
            "Please enter your data to continue",
            style: AppTextStyle.fontGrey400Regular15Inter,
          ),
        ],
      ),
    );
  }
}
