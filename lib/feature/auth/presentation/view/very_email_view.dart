import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/config/cache/cache_helper.dart';
import 'package:laza_app/core/di/di.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/feature/auth/cubit/cubit/auth_cubit.dart';
import 'package:laza_app/feature/auth/presentation/widgets/form_verfiy_email_widget.dart';

class VeryEmailView extends StatelessWidget {
  const VeryEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(
        loginRepository: getIt(),
        signupRepository: getIt(),
        verfiyEmailRepo: getIt(),
      ),
      child: Scaffold(
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
                // SvgPicture.asset(AppImages.verfiy),
                SizedBox(height: 40.h),
                FormVerifiyEmailWidget(
                  email: CacheHelper.getSecureString(key: 'email'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
