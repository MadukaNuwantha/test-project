
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/presentation/constants/app_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool showLeadingIcon;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.showLeadingIcon = true,
    this.actions,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.5,
      surfaceTintColor: AppColors.white,
      backgroundColor: AppColors.white,
      foregroundColor: AppColors.white,
      shadowColor: AppColors.white,
      title: Text(
        widget.title,
        style: GoogleFonts.inter(
          color: AppColors.gray,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      centerTitle: true,
      leading: widget.showLeadingIcon
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: AppColors.gray,
              ),
            )
          : null, // Set leading to null if showLeadingIcon is false
      actions: widget.actions, // Set the actions
    );
  }
}
