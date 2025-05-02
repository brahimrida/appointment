import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButtons extends StatelessWidget {
  final VoidCallback onGoogleButtonClicked;
  final VoidCallback onFacebookButtonClicked;
  final VoidCallback onAppleButtonClicked;
  const AuthButtons({
    super.key,
    required this.onGoogleButtonClicked,
    required this.onFacebookButtonClicked,
    required this.onAppleButtonClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 32.w,
      children: [
        InkWell(
          onTap: onGoogleButtonClicked,
          child: Image.asset("assets/images/auth/google.png", width: 46.w),
        ),
        InkWell(
          onTap: onFacebookButtonClicked,
          child: Image.asset("assets/images/auth/facebook.png", width: 46.w),
        ),
        InkWell(
          onTap: onAppleButtonClicked,
          child: Image.asset("assets/images/auth/apple.png", width: 46.w),
        ),
      ],
    );
  }
}
