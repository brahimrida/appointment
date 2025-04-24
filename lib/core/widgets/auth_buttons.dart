import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  final double width;
  final VoidCallback onGoogleButtonClicked;
  final VoidCallback onFacebookButtonClicked;
  final VoidCallback onAppleButtonClicked;
  const AuthButtons({
    super.key,
    required this.width,
    required this.onGoogleButtonClicked,
    required this.onFacebookButtonClicked,
    required this.onAppleButtonClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 28,
      children: [
        InkWell(
          onTap: onGoogleButtonClicked,
          child: Image.asset("assets/images/auth/google.png", width: width * 0.13),
        ),
        InkWell(
          onTap: onFacebookButtonClicked,
          child: Image.asset("assets/images/auth/facebook.png", width: width * 0.13),
        ),
        InkWell(
          onTap: onAppleButtonClicked,
          child: Image.asset("assets/images/auth/apple.png", width: width * 0.13),
        ),
      ],
    );
  }
}
