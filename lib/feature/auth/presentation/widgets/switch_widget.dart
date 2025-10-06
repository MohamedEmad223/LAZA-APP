import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:laza_app/core/theme/color_manager.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      height: 18.h,
      width: 40.0.w,
      padding: 2,
      toggleSize: 20.0,
      borderRadius: 30.0.r,
      activeColor: ColorManager.green400,
      value: isSwitched,
      onToggle: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}
