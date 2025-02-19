import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/presentation/constants/app_colors.dart';
import 'package:test_project/presentation/constants/app_sizes.dart';
import 'package:test_project/presentation/widgets/custom_submit_button.dart';

class FirstTimeLoginFirstScreen extends StatefulWidget {
  const FirstTimeLoginFirstScreen({super.key});

  @override
  State<FirstTimeLoginFirstScreen> createState() => _FirstTimeLoginFirstScreenState();
}

class _FirstTimeLoginFirstScreenState extends State<FirstTimeLoginFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
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
                    SizedBox(height: ScreenSize.height(context) * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'You are logged in for the first time and can upload a profile photo',
                            style: GoogleFonts.notoSans(
                              color: AppColors.darkGray,
                              fontSize: ScreenSize.textScaleFactor(context, 14),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center, // Optional: Center the text
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenSize.height(context) * 0.02),
                    GestureDetector(
                      onTap: () {
                      },
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: AppColors.softPrimary,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                          color:AppColors.primary,
                        ),
                      ),
                    ),
                    const Spacer(),
                    CustomSubmitButton(
                      title: 'Next',
                      color: AppColors.primary,
                      titleColor: AppColors.white,
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