import 'package:flutter/material.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/feature/auth/presentation/widgets/switch_widget.dart';

class RememberMeWidget extends StatelessWidget {
  const RememberMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text("Remember me", style: AppTextStyle.font600Medium14Inter),
        Spacer(),
        SwitchWidget(),
      ],
    );
  }
}
