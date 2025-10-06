import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24.r,
      backgroundColor: const Color(0xFFF6F7FB),
      child: const Icon(Icons.arrow_back, color: Colors.black),
    );
  }
}
