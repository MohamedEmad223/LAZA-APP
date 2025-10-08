import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/common/ui/custom_button.dart';
import 'package:laza_app/core/common/ui/custom_password_field.dart';
import 'package:laza_app/core/common/ui/custom_text_field.dart';
import 'package:laza_app/core/common/ui/text_feild_lable.dart';
import 'package:laza_app/core/error/messages/validation_error_messages.dart';
import 'package:laza_app/feature/auth/cubit/cubit/auth_cubit.dart';
import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
import 'package:laza_app/feature/auth/presentation/view/signup_screen.dart';
import 'package:laza_app/feature/auth/presentation/widgets/forget_password_widget.dart';
import 'package:laza_app/feature/auth/presentation/widgets/im_line_action_text.dart';
import 'package:laza_app/feature/auth/presentation/widgets/login_bloc_listener.dart';
import 'package:laza_app/feature/auth/presentation/widgets/remember_me_widget.dart';
import 'package:laza_app/feature/auth/presentation/widgets/term_widget.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFeildLable(lable: 'UserName'),
          CustomTextField(
            hintText: 'Enter your UserName',
            controller: emailController,
            validator: (email) => ValidationErrorTexts.emailValidation(email),
          ),
          SizedBox(height: 25.h),
          TextFeildLable(lable: 'Password'),
          CustomPasswordField(
            controller: passwordController,
            validator: (password) =>
                ValidationErrorTexts.loginPasswordValidation(password),
          ),
          SizedBox(height: 10.h),
          ForgetPasswordWidget(),
          SizedBox(height: 10.h),
          RememberMeWidget(),
          SizedBox(height: 50.h),
          InlineActionText(
            leadingText: 'Are you have not Email',
            actionText: 'Sign Up',
            onActionTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignupView();
                },
              ),
            ),
          ),
          SizedBox(height: 40.h),
          TermWidget(),
          SizedBox(height: 20.h),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return CustomButton(
                title: 'Login',
                isLoading: state is LoginLoading,
                onTab: () {
                  if (formKey.currentState!.validate()) {
                    context.read<AuthCubit>().login(
                      LoginBodyModel(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  }
                },
              );
            },
          ),
          LoginBlocListener(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
