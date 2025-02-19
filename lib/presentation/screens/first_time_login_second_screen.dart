import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_project/presentation/constants/app_colors.dart';
import 'package:test_project/presentation/constants/app_sizes.dart';
import 'package:test_project/presentation/widgets/custom_text_field.dart';
import 'package:test_project/presentation/widgets/custom_submit_button.dart';

class FirstTimeLoginSecondScreen extends StatefulWidget {
  const FirstTimeLoginSecondScreen({super.key});

  @override
  State<FirstTimeLoginSecondScreen> createState() => _FirstTimeLoginSecondScreenState();
}

class _FirstTimeLoginSecondScreenState extends State<FirstTimeLoginSecondScreen> {
  final TextEditingController _firstNameController = TextEditingController(text: 'Jane');
  final TextEditingController _lastNameController = TextEditingController(text: 'Cooper');
  final TextEditingController _emailController = TextEditingController(text: 'jane.c@gmail.com');
  final TextEditingController _phoneController = TextEditingController(text: '02 9371 9090');
  final TextEditingController _addressController = TextEditingController(text: '09 Hug × 16 Hug\n56 O’Mally Road, ST LEONARDS, 2065, NSW');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Personal info',
                style: GoogleFonts.inter(
                  color: AppColors.gray,
                  fontSize: ScreenSize.textScaleFactor(context, 32),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'You can add your personal data now or do t later',
                style: GoogleFonts.notoSans(
                  color: AppColors.darkGray,
                  fontSize: ScreenSize.textScaleFactor(context, 14),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 40),
              Row(
                children: [
                  Text(
                    'First Name',
                    style: GoogleFonts.notoSans(
                      color: AppColors.lightGray,
                      fontSize: ScreenSize.textScaleFactor(context, 13),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomTextField(controller: TextEditingController(), showPrefixIcon: false),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Last Name',
                    style: GoogleFonts.notoSans(
                      color: AppColors.lightGray,
                      fontSize: ScreenSize.textScaleFactor(context, 13),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomTextField(controller: TextEditingController(), showPrefixIcon: false),

              SizedBox(height: 20),
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
              CustomTextField(controller: TextEditingController(), showPrefixIcon: false),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Phone number',
                    style: GoogleFonts.notoSans(
                      color: AppColors.lightGray,
                      fontSize: ScreenSize.textScaleFactor(context, 13),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomTextField(controller: TextEditingController(), showPrefixIcon: false),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Mailing address',
                    style: GoogleFonts.notoSans(
                      color: AppColors.lightGray,
                      fontSize: ScreenSize.textScaleFactor(context, 13),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              CustomTextField(controller: TextEditingController(), showPrefixIcon: false),
              SizedBox(height: ScreenSize.height(context) * 0.2),
          Row(
            children: [
              Expanded(
                child: CustomSubmitButton(
                  title: 'Back',
                  titleColor: AppColors.gray,
                  color: AppColors.softPrimary,
                  prefixIcon: Icons.arrow_back,
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: CustomSubmitButton(
                  title: 'Next',
                  titleColor: AppColors.white,
                  color: AppColors.primary,
                  suffixIcon: Icons.arrow_forward,
                  onTap: () {
                    // Add logic for the "Next" button
                  },
                ),
              )
            ],)
            ],
          ),
        ),
      ),
    );
  }


}