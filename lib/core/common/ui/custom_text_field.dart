import 'dart:async';
import 'package:flutter/material.dart';
import 'package:laza_app/core/theme/app_text_style.dart';
import 'package:laza_app/core/theme/color_manager.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
    this.onChanged,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showCheck = false;
  Timer? _debounce;

  void _onUserTyping(String value) {
    _debounce?.cancel();

    if (value.isEmpty) {
      setState(() => _showCheck = false);
      return;
    }

    _debounce = Timer(const Duration(milliseconds: 700), () {
      setState(() => _showCheck = true);
    });

    widget.onChanged?.call(value);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword,
      validator: widget.validator,
      onChanged: _onUserTyping,
      style: AppTextStyle.font600Medium15Inter,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: _showCheck
            ? const Icon(Icons.check, color: ColorManager.green400)
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
