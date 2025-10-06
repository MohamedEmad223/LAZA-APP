import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/theme/color_manager.dart';
import 'package:laza_app/core/theme/font_weight_color.dart';
import 'package:laza_app/core/theme/fonts.dart';

class AppTextStyle {
  static TextStyle font600Semibold28Inter = TextStyle(
    color: ColorManager.black600,
    fontSize: 28.sp,
    fontWeight: FontWeightManager.semiBold,
    fontFamily: Fonts.inter,
  );

  static TextStyle font600Medium15Inter = TextStyle(
    color: ColorManager.black600,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
    fontFamily: Fonts.inter,
  );

  static TextStyle font600Medium14Inter = TextStyle(
    color: ColorManager.black600,
    fontSize: 13.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: Fonts.inter,
  );

  static TextStyle fontGrey400Regular15Inter = TextStyle(
    color: ColorManager.grey400,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: Fonts.inter,
  );

  static TextStyle fontRed400Regular15Inter = TextStyle(
    color: ColorManager.red400,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: Fonts.inter,
  );

  static TextStyle fontGrey400Regular13Inter = TextStyle(
    color: ColorManager.grey400,
    fontSize: 13.sp,
    fontWeight: FontWeightManager.regular,
    fontFamily: Fonts.inter,
  );

  static TextStyle fontWhite17Inter = TextStyle(
    color: ColorManager.primaryWhite,
    fontSize: 20.sp,
    fontWeight: FontWeightManager.semiBold,
    fontFamily: Fonts.inter,
  );
}
