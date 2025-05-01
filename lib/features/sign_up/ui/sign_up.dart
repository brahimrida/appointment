import 'package:appointment/core/widgets/auth_separator.dart';
import 'package:appointment/features/sign_up/ui/widgets/phone_number_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/text_styles.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/auth_buttons.dart';
import '../../../core/widgets/custom_spacer.dart';
import '../../../core/widgets/form_field.dart';
import '../../../core/widgets/sign_up_and_register_bottom_section.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailCont = TextEditingController();
  final TextEditingController _passwordCont = TextEditingController();
  final TextEditingController _phoneNumberCont = TextEditingController();

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
                Row(children: [Text("Create Account", style: TextStyles.primaryColorBold24px)]),
                Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
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
                      Vertical(11.h),
                      FormNumberTextField(
                        label: "Your number",
                        controller: _phoneNumberCont,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) {
                            // needs more logic like some regex
                            return "Number required";
                          }
                          return null;
                        },
                      ),
                      Vertical(8.h),
                      AppButton(
                        text: "Create Account",
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
