import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/presentation/constants/app_colors.dart';
import 'package:test_project/presentation/constants/app_sizes.dart';

class CustomSubmitButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color titleColor;
  void Function()? onTap;
  final IconData? suffixIcon;
  final IconData? prefixIcon;

  CustomSubmitButton({
    super.key,
    required this.title,
    required this.color,
    required this.titleColor,
    required this.onTap,
    this.suffixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (prefixIcon != null) Row(children: [Icon(prefixIcon, color: AppColors.gray)]),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      color: titleColor,
                      fontSize: ScreenSize.textScaleFactor(context, 16),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (suffixIcon != null)
                    Row(
                      children: [const SizedBox(width: 10), Icon(suffixIcon, color: Colors.white)],
                    ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
