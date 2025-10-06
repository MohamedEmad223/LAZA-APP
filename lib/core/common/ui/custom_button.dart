import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/core/theme/color_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onTab});

  final String title;

  final void Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: double.infinity,
        height: 75.h,
        alignment: Alignment.center,
        color: ColorManager.move,
        child: Text(title, style: AppTextStyle.fontWhite17Inter),
      ),
    );
  }
}
