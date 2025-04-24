import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              children: [
                const SizedBox(height: 80),
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
                FormTextField(label: "Email", type: FormFieldType.email),
                FormTextField(label: "Password", type: FormFieldType.password),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
