import 'package:flutter/material.dart';

import 'package:test_project/presentation/constants/app_colors.dart';
import 'package:test_project/presentation/constants/app_icons.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final int? maxLines;
  final bool? validate;
  final bool? keyboardType;
  final bool showPrefixIcon; // New parameter

  const CustomTextField({
    super.key,
    required this.controller,
    this.maxLines,
    this.validate,
    this.keyboardType,
    this.showPrefixIcon = true, // Default value is false
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextInputType _getKeyboardType() {
    if (widget.keyboardType == true) {
      return const TextInputType.numberWithOptions(decimal: true);
    } else {
      return TextInputType.text;
    }
  }

  int? _getMaxLines() {
    if (widget.maxLines != null) {
      return widget.maxLines;
    } else {
      return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: _getMaxLines(),
      decoration: InputDecoration(
        prefixIcon: widget.showPrefixIcon ? Image.asset(AppIcons.mail) : null, // Conditionally show prefixIcon
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        fillColor: AppColors.primary.withAlpha(20),
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.softGray),
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.softGray),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.softGray),
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.softGray),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.softGray),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      cursorColor: AppColors.primary,
      controller: widget.controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: _getKeyboardType(),
      validator: (value) {
        if (widget.validate != null && widget.validate == true && value!.isEmpty) {
          return 'Please fill this field to continue';
        } else {
          return null;
        }
      },
    );
  }
}