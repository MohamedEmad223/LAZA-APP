import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_app/core/common/ui/custom_button.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/feature/auth/presentation/widgets/pin_put_widget.dart';

class VeryEmailView extends StatelessWidget {
  const VeryEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              BackButton(),
              SizedBox(height: 40.h),
              Center(
                child: Text(
                  "Verification Code",
                  style: AppTextStyle.font600Semibold28Inter,
                ),
              ),
              SizedBox(height: 20.h),
              SvgPicture.asset("assets/svgs/icons/verfy.svg"),
              SizedBox(height: 40.h),
              PinPutWidget(),
              SizedBox(height: 120.h),
              CustomButton(title: 'Verify Email', onTab: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
