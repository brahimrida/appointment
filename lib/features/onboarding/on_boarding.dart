import 'package:appointment/features/onboarding/widgets/doctor_with_heading.dart';
import 'package:appointment/features/sign_in/ui/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/text_styles.dart';
import '../../core/widgets/app_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Vertical(30.h),
                  Image.asset("assets/images/full-logo.png", width: size.width * 0.4),
                  Vertical(40.h),
                  DoctorWithHeading(),
                  SizedBox(
                    width: 312.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.secondaryColorRegular12px,
                    ),
                  ),
                  Vertical(120.h),
                ],
              ),
            ),
            Positioned(bottom: 20.h, child: AppButton(text: "Get Started", onClick: () {})),
          ],
        ),
      ),
    );
  }
}
