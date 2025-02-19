import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/presentation/constants/app_colors.dart';
import 'package:test_project/presentation/constants/app_icons.dart';
import 'package:test_project/presentation/constants/app_sizes.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;

  const CustomPasswordField({super.key, required this.controller});

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscureText = true;

  void toggleObscureText() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Image.asset(AppIcons.lock),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        fillColor:AppColors.primary.withAlpha(20),
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
        suffixIcon: GestureDetector(
          onTap: toggleObscureText,
          child: Icon(obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined),
        ),
        suffixIconColor: obscureText ? AppColors.gray : AppColors.primary,
      ),
      cursorColor: AppColors.primary,
      controller: widget.controller,
      obscureText: obscureText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please fill this field to continue';
        } else {
          return null;
        }
      },
    );
  }
}
