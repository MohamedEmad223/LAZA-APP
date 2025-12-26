import 'package:flutter/material.dart';
import 'package:laza_app/core/theme/app_text_style.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  final String? Function(String?)? validator;

  const CustomPasswordField({
    super.key,
    this.controller,
    this.hintText = "Enter your password", this.validator,
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  String strengthLabel = '';
  Color strengthColor = Colors.transparent;

  /// Function to check password strength
  void _checkPasswordStrength(String value) {
    setState(() {
      if (value.isEmpty) {
        strengthLabel = '';
        strengthColor = Colors.transparent;
      }
      // Only numbers → Weak
      else if (RegExp(r'^\d+$').hasMatch(value)) {
        strengthLabel = 'Weak';
        strengthColor = Colors.red;
      }
      // Letters + Numbers → Good
      else if (RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]+$').hasMatch(value)) {
        strengthLabel = 'Good';
        strengthColor = Colors.orange;
      }
      // Letters + Numbers + Special Characters → Strong
      else if (RegExp(
        r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&#^])[A-Za-z\d@$!%*?&#^]+$',
      ).hasMatch(value)) {
        strengthLabel = 'Strong';
        strengthColor = Colors.green;
      } else {
        strengthLabel = '';
        strengthColor = Colors.transparent;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      style: AppTextStyle.font600Medium15Inter,
      obscureText: true,
      validator: widget.validator,
      onChanged: _checkPasswordStrength,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        suffix: strengthLabel.isNotEmpty
            ? Text(
                strengthLabel,
                style: TextStyle(
                  color: strengthColor,
                  fontWeight: FontWeight.w500,
                ),
              )
            : null,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
