import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/common/ui/custom_button.dart';
import 'package:laza_app/core/common/ui/custom_password_field.dart';
import 'package:laza_app/core/common/ui/custom_text_field.dart';
import 'package:laza_app/core/common/ui/text_feild_lable.dart';
import 'package:laza_app/core/error/messages/validation_error_messages.dart';
import 'package:laza_app/feature/auth/cubit/cubit/auth_cubit.dart';
import 'package:laza_app/feature/auth/data/models/signup_body_model.dart';
import 'package:laza_app/feature/auth/presentation/widgets/remember_me_widget.dart';
import 'package:laza_app/feature/auth/presentation/widgets/sign_up_bloc_listener.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFeildLable(lable: 'Email Address'),
          CustomTextField(
            controller: emailController,
            hintText: 'Enter your Email',
            validator: (email) => ValidationErrorTexts.emailValidation(email),
          ),
          SizedBox(height: 25.h),
          TextFeildLable(lable: 'Password'),
          CustomPasswordField(
            controller: passwordController,
            validator: (password) =>
                ValidationErrorTexts.loginPasswordValidation(password),
          ),
          SizedBox(height: 25.h),
          TextFeildLable(lable: 'First Name'),
          CustomTextField(
            controller: firstNameController,
            hintText: 'Enter your First Name',
            validator: (firstname) =>
                ValidationErrorTexts.nameValidation(firstname),
          ),
          SizedBox(height: 25.h),
          TextFeildLable(lable: 'Last Name'),
          CustomTextField(
            controller: lastNameController,
            hintText: 'Enter your Last Name',
            validator: (lastName) =>
                ValidationErrorTexts.nameValidation(lastName),
          ),
          SizedBox(height: 40.h),
          RememberMeWidget(),
          SizedBox(height: 60.h),
          BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              return CustomButton(isLoading: state is SignUpLoading,title: "Sign Up", onTab: () {
                if (formKey.currentState!.validate()) {
                    context.read<AuthCubit>().signUp(
                      SignupBodyModel(
                        email: emailController.text,
                        password: passwordController.text,
                        firstName: firstNameController.text,
                        lastName: lastNameController.text,
                      ),
                    );
                  }
              });
            },
          ),
          SignUpBlocListener()
        ],
      ),
    );
  }
}
