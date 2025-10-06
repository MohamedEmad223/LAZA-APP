import 'package:flutter/material.dart';
import 'package:laza_app/core/theme/app_text_style.dart';

class TextFeildLable extends StatelessWidget {
  const TextFeildLable({super.key, required this.lable});
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Text(lable, style: AppTextStyle.fontGrey400Regular13Inter);
  }
}
