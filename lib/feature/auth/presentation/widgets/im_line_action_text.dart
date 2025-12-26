import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laza_app/core/theme/color_manager.dart';

class InlineActionText extends StatelessWidget {
  final String leadingText;
  final String actionText;
  final void Function()? onActionTap;
  final TextStyle? leadingStyle;

  const InlineActionText({
    super.key,
    required this.leadingText,
    required this.actionText,
    required this.onActionTap,
    this.leadingStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          leadingText,
          style: leadingStyle ?? Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(width: 4.w),
        TextButton(
          onPressed: onActionTap,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          child: Text(
            actionText,
            style: TextStyle(fontSize: 15.sp, color: ColorManager.move),
          ),
        ),
      ],
    );
  }
}
