import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/presentation/constants/app_colors.dart';
import 'package:test_project/presentation/constants/app_icons.dart';
import 'package:test_project/presentation/constants/app_sizes.dart';
import 'package:test_project/presentation/widgets/custom_password_field.dart';
import 'package:test_project/presentation/widgets/custom_submit_button.dart';
import 'package:test_project/presentation/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool keepLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome',
                          style: GoogleFonts.inter(
                            color: AppColors.gray,
                            fontSize: ScreenSize.textScaleFactor(context, 32),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to your Portal',
                          style: GoogleFonts.notoSans(
                            color: AppColors.darkGray,
                            fontSize: ScreenSize.textScaleFactor(context, 14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 40),
                    Row(
                      children: [
                        Text(
                          'Email',
                          style: GoogleFonts.notoSans(
                            color: AppColors.lightGray,
                            fontSize: ScreenSize.textScaleFactor(context, 13),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    CustomTextField(controller: TextEditingController()),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          ' Password',
                          style: GoogleFonts.notoSans(
                            color: AppColors.lightGray,
                            fontSize: ScreenSize.textScaleFactor(context, 13),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    CustomPasswordField(controller: TextEditingController()),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Confirm Password',
                          style: GoogleFonts.notoSans(
                            color: AppColors.lightGray,
                            fontSize: ScreenSize.textScaleFactor(context, 13),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    CustomPasswordField(controller: TextEditingController()),
                    Spacer(),

                    CustomSubmitButton(
                      title: 'Sign Up',
                      titleColor: AppColors.white,
                      color: AppColors.primary,
                      onTap: () {},
                      suffixIcon: Icons.arrow_forward,
                    ),
                    SizedBox(height: ScreenSize.height(context) * 0.02),
                    CustomSubmitButton(
                      title: 'Login',
                      titleColor: AppColors.white,
                      color: AppColors.primary,
                      onTap: () {},
                      suffixIcon: Icons.arrow_forward,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
