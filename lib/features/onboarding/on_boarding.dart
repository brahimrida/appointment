import 'package:appointment/features/onboarding/widgets/doctor.dart';
import 'package:appointment/features/sign_in/ui/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/styles.dart';
import '../../core/widgets/app_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Vertical(30.h),
              Image.asset("assets/images/full-logo.png", width: size.width * 0.4),
              Vertical(40.h),
              Doctor(),
              SizedBox(
                width: 312.w,
                child: Text(
                  textAlign: TextAlign.center,
                  "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                  style: TextStyles.secondaryColorRegular12px,
                ),
              ),
              Vertical(30.h),
              AppButton(text: "Get Started", onClick: () {}),
              Vertical(50.h),
            ],
          ),
        ),
      ),
    );
  }
}
