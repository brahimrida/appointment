import 'package:appointment/core/widgets/auth_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/auth_buttons.dart';
import '../../../core/widgets/form_field.dart';
import '../../../core/widgets/sign_up_and_register_bottom_section.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              spacing: 9.h,
              children: [
                Vertical(80.h),
                Row(children: [Text("Welcome Back", style: TextStyles.primaryColorBold24px)]),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.secondaryColorRegular14px,
                ),
                Vertical(18.h),
                FormTextField(label: "Email", type: TextInputType.emailAddress),
                Vertical(2.h),
                FormTextField(label: "Password", type: TextInputType.text, confidential: true),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 1.w,
                      children: [
                        Checkbox(
                          activeColor: AppColors.primary,
                          side: BorderSide(color: AppColors.borderColor, width: 3),
                          value: _rememberMe,
                          onChanged: (v) {
                            setState(() => _rememberMe = v!);
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            color: AppColors.textLightColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Vertical(8.h),
                AppButton(text: "Login", onClick: () {}),
                Vertical(10.h),
                AuthSeparator(),
                Vertical(10.h),
                AuthButtons(
                  onGoogleButtonClicked: () {},
                  onFacebookButtonClicked: () {},
                  onAppleButtonClicked: () {},
                ),
                Vertical(10.h),
                SignInAndUpBottomSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Vertical extends StatelessWidget {
  final double height;
  const Vertical(this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
