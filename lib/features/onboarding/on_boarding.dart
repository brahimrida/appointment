import 'package:flutter/material.dart';

import '../../core/theming/colors.dart';
import '../../core/widgets/app_button.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                children: [
                  Expanded(flex: 9, child: Image.asset("assets/images/logo.png", width: width * 2)),
                  Expanded(flex: 2, child: SizedBox.shrink()),
                ],
              ),
            ),

            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/doctor.png", width: width * 1.2),
            ),
            Positioned(
              top: 54,
              child: Image.asset("assets/images/full-logo.png", width: width * 0.4),
            ),
            Positioned(
              bottom: 30,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: width,
                    height: height * 0.31,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.92, 0.98],
                        colors: [
                          Colors.white,
                          Colors.white.withAlpha(220),
                          Colors.white.withAlpha(0),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    spacing: 28,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Best Doctor\nAppointment App",
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                          fontFamily: "Inter",
                        ),
                      ),
                      SizedBox(
                        width: width * 0.8,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[700],
                            fontFamily: "Inter",
                          ),
                        ),
                      ),
                      AppButton(text: "Get Started", onClick: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
