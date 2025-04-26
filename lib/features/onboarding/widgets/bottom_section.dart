import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/widgets/app_button.dart';

class BottomOnboardingSection extends StatelessWidget {
  final double h;
  final double w;
  const BottomOnboardingSection({super.key, required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: w,
            height: h * 0.31,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.0, 0.92, 0.98],
                colors: [Colors.white, Colors.white.withAlpha(220), Colors.white.withAlpha(0)],
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
                width: w * 0.8,
                child: Text(
                  textAlign: TextAlign.center,
                  "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                  style: TextStyle(fontSize: 11, color: Colors.grey[700], fontFamily: "Inter"),
                ),
              ),
              AppButton(text: "Get Started", onClick: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
