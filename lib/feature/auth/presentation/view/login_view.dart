import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/di/di.dart';
import 'package:laza_app/feature/auth/cubit/cubit/auth_cubit.dart';
import 'package:laza_app/feature/auth/presentation/widgets/login_form.dart';
import 'package:laza_app/feature/auth/presentation/widgets/welcom_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(
        loginRepository: getIt(),
        signupRepository: getIt(),
        verfiyEmailRepo: getIt(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40.h),
                  WelcomText(),
                  SizedBox(height: 40.h),
                  LoginForm(),
                  SizedBox(height: 30.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
