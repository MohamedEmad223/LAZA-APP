import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/common/ui/custom_button.dart';
import 'package:laza_app/core/common/ui/custom_password_field.dart';
import 'package:laza_app/core/common/ui/custom_text_field.dart';
import 'package:laza_app/core/common/ui/text_feild_lable.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/feature/auth/presentation/widgets/remember_me_widget.dart';

class SignupVeiw extends StatelessWidget {
  const SignupVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  "Welcome",
                  style: AppTextStyle.font600Semibold28Inter,
                ),
              ),
              SizedBox(height: 40.h),
              TextFeildLable(lable: 'UserName'),
              CustomTextField(hintText: 'Enter your UserName'),
              SizedBox(height: 25.h),
              TextFeildLable(lable: 'Password'),
              CustomPasswordField(),
              SizedBox(height: 25.h),
              TextFeildLable(lable: 'Email Address'),
              CustomTextField(hintText: 'Enter your Email'),
              SizedBox(height: 40.h),
              RememberMeWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(title: 'Sign Up', onTab: () {}),
    );
  }
}
