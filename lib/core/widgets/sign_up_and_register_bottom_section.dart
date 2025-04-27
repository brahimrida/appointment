import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class SignInAndUpBottomSection extends StatefulWidget {
  const SignInAndUpBottomSection({super.key});

  @override
  State<SignInAndUpBottomSection> createState() => _SignInAndUpBottomSectionState();
}

class _SignInAndUpBottomSectionState extends State<SignInAndUpBottomSection> {
  final TapGestureRecognizer _termsTap = TapGestureRecognizer();
  final TapGestureRecognizer _privacyTap = TapGestureRecognizer();
  final TapGestureRecognizer _signUpTap = TapGestureRecognizer();

  void _goToTermsAndConditions() {
    print("terms and conditions");
    // push to stack
  }

  void _goToSignUpPage() {
    print("terms and conditions");
    // push to stack
  }

  void _goToPrivacyPolicy() {
    print("privacy policy");
    // push to stack
  }

  @override
  void initState() {
    // register a tap gesture recognizer
    _privacyTap.onTap = () => _goToPrivacyPolicy();
    _termsTap.onTap = () => _goToTermsAndConditions();
    _signUpTap.onTap = () => _goToSignUpPage();
    super.initState();
  }

  @override
  void dispose() {
    _termsTap.dispose();
    _privacyTap.dispose();
    _signUpTap.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 14.h,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.regularLight14,
            children: <TextSpan>[
              TextSpan(
                text: 'Terms & Conditions ',
                recognizer: _termsTap,
                style: TextStyles.secondaryColorDarkBold14px,
              ),
              TextSpan(text: 'and ', style: TextStyles.regularLight14),
              TextSpan(
                text: 'PrivacyPolicy.',
                recognizer: _privacyTap,
                style: TextStyles.secondaryColorDarkBold14px,
              ),
            ],
          ),
        ),

        RichText(
          text: TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.secondaryColorDarkRegular12px,
            children: <TextSpan>[
              TextSpan(
                text: 'Sign Up',
                recognizer: _signUpTap,
                style: TextStyles.secondaryColorDarkRegular12px.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
