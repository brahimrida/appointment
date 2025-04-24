import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/auth_buttons.dart';
import '../../../core/widgets/form_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                Vertical(80),
                Row(
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                        fontFamily: "Inter",
                      ),
                    ),
                  ],
                ),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyle(color: AppColors.secondary, fontSize: 16, fontFamily: "Inter"),
                ),
                Vertical(18),
                FormTextField(label: "Email", type: FormFieldType.email),
                Vertical(2),
                FormTextField(label: "Password", type: FormFieldType.password),
                Vertical(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 1,
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
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "inter",
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColors.primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "inter",
                      ),
                    ),
                  ],
                ),
                Vertical(8),
                AppButton(text: "Login", onClick: () {}),
                Vertical(10),
                Row(
                  children: [
                    Expanded(child: Container(height: 1, color: AppColors.textLightColor)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "Or sign in with",
                        style: TextStyle(color: AppColors.textLightColor),
                      ),
                    ),
                    Expanded(child: Container(height: 1, color: AppColors.textLightColor)),
                  ],
                ),
                Vertical(10),
                AuthButtons(
                  width: width,
                  onGoogleButtonClicked: () {},
                  onFacebookButtonClicked: () {},
                  onAppleButtonClicked: () {},
                ),
                Vertical(10),
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
