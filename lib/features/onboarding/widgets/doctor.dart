import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class Doctor extends StatelessWidget {
  const Doctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(right: 20.w, bottom: 80.h),
            child: Image.asset("assets/images/on_boarding_bg.png"),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                foregroundDecoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.0, 0.18, 0.29],
                    colors: [Colors.white, Colors.white.withAlpha(200), Colors.white.withAlpha(0)],
                  ),
                ),
                child: Image.asset("assets/images/doctor.png"),
              ),
              Positioned(
                bottom: 0,
                child: Text(
                  textAlign: TextAlign.center,
                  "Best Doctor\nAppointment App",
                  style: TextStyles.primaryColorBold24px.copyWith(fontSize: 32.sp),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
