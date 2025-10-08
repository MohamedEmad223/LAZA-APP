import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/common/ui/custom_button.dart';
import 'package:laza_app/core/error/messages/validation_error_messages.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/core/theme/color_manager.dart';
import 'package:laza_app/feature/auth/cubit/cubit/auth_cubit.dart';
import 'package:laza_app/feature/auth/data/models/verify_email_body_model.dart';
import 'package:laza_app/feature/auth/presentation/widgets/verify_email_bloc_listener.dart';
import 'package:pinput/pinput.dart';

class FormVerifiyEmailWidget extends StatelessWidget {
  FormVerifiyEmailWidget({super.key,  required this.email});
  final TextEditingController pinController = TextEditingController();
  final String? email;
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Pinput(
            keyboardType: TextInputType.number,
            validator: (value) => ValidationErrorTexts.otpValidation(value),
            length: 6,
            controller: pinController,
            obscuringCharacter: '•',
            defaultPinTheme: defaultPinTheme,
            autofocus: true,
            errorText: 'حاول مره اخري',
            focusedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration?.copyWith(
                border: Border.all(color: ColorManager.grey400, width: 3.w),
              ),
            ),
            submittedPinTheme: defaultPinTheme.copyWith(
              decoration: defaultPinTheme.decoration?.copyWith(
                color: ColorManager.white,
              ),
            ),
            //errorText:"",
            errorTextStyle: AppTextStyle.font600Medium15Inter,
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) async {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<AuthCubit>(context)
                    .verifyEmail(
                      VerifyEmailBodyModel(
                        otp: pinController.text,
                        email: email??'No Email'
                      )
                    );
              }
            },
          ),
        ),
        SizedBox(height: 120.h),
        BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            return CustomButton(isLoading: state is VerifyEmailLoading,title: 'Verify Email', onTab: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<AuthCubit>(context)
                    .verifyEmail(
                      VerifyEmailBodyModel(
                        otp: pinController.text,
                        email: email.toString() 
                      )
                    );
              }

            });
          },
        ),
        VerifyEmailBlocListener()
      ],
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
