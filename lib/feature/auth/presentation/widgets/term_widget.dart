import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/theme/app_text_style.dart';

class TermWidget extends StatelessWidget {
  const TermWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "By connecting your account confirm that you agree with our ",
            style: AppTextStyle.fontGrey400Regular13Inter,
            children: [
              TextSpan(
                text: "Term and Condition",
                style: AppTextStyle.font600Medium14Inter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
