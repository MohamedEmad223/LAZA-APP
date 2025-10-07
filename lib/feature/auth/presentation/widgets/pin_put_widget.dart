import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/error/messages/validation_error_messages.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/core/theme/color_manager.dart';
import 'package:pinput/pinput.dart';

class PinPutWidget extends StatelessWidget {
  const PinPutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Pinput(
      keyboardType: TextInputType.number,
      validator: (value) => ValidationErrorTexts.otpValidation(value),
      length: 7,
      obscuringCharacter: '•',
      defaultPinTheme: defaultPinTheme,
      autofocus: true,
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration?.copyWith(
          border: Border.all(color: ColorManager.grey400, width: 3),
        ),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration?.copyWith(
          color: ColorManager.white,
        ),
      ),
      errorText:
          "                                                                                       برجاء ادخال الكود",
      errorTextStyle: AppTextStyle.font600Medium15Inter,
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onCompleted: (pin) async {},
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 56.w,
  height: 56.w,
  textStyle: AppTextStyle.font600Semibold28Inter,
  decoration: BoxDecoration(
    color: ColorManager.white,
    borderRadius: BorderRadius.circular(8.r),
    border: Border.all(color: ColorManager.grey400),
  ),
);
