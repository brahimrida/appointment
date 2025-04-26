import 'package:appointment/features/onboarding/widgets/bottom_section.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(
                    flex: 9,
                    child: Image.asset("assets/images/logo.png", width: size.width * 2),
                  ),
                  Expanded(flex: 2, child: SizedBox.shrink()),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/doctor.png", width: size.width * 1.2),
            ),
            Positioned(
              top: 54,
              child: Image.asset("assets/images/full-logo.png", width: size.width * 0.4),
            ),
            BottomOnboardingSection(h: size.height, w: size.width),
          ],
        ),
      ),
    );
  }
}
