import 'package:appointment/core/widgets/auth_separator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/text_styles.dart';
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
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passwordCont = TextEditingController();

  void _grabAndVerifyValues() {
    String email = _emailCont.text;
    String password = _passwordCont.text;
    print("email field: $email");
    print("pass field: $password");
  }

  final _formKey = GlobalKey<FormState>();

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
                Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      FormTextField(
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            // needs more logic like some regex
                            return "E-mail required";
                          }
                          return null;
                        },
                        label: "Email",
                        type: TextInputType.emailAddress,
                        controller: _emailCont,
                      ),
                      Vertical(11.h),
                      FormTextField(
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            // needs more logic like some regex
                            return "Password required";
                          } else if (v.trim().length < 12) {
                            return "Password must be at least 12 characters";
                          }
                          return null;
                        },
                        label: "Password",
                        type: TextInputType.text,
                        confidential: true,
                        controller: _passwordCont,
                      ),
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
                      AppButton(
                        text: "Login",
                        onClick: () {
                          if (_formKey.currentState!.validate()) {
                            print("input is correct proceed with server validation");
                          }
                        },
                      ),
                    ],
                  ),
                ),

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
