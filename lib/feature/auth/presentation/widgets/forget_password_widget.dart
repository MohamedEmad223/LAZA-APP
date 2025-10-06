import 'package:flutter/material.dart';
import 'package:laza_app/core/theme/app_text_style.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          "Forgot password?",
          style: AppTextStyle.fontRed400Regular15Inter,
        ),
      ),
    );
  }
}
