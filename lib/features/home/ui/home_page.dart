import 'package:appointment/features/home/ui/widgets/doctor_speciality_section.dart';
import 'package:appointment/features/home/ui/widgets/home_banner.dart';
import 'package:appointment/features/home/ui/widgets/home_page_greeting.dart';
import 'package:appointment/features/home/ui/widgets/notification_box.dart';
import 'package:appointment/features/home/ui/widgets/recommendation_doctor_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/custom_spacer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [HomePageGreeting(), NotificationBox()],
                ),
                HomeBanner(onButtonClicked: () {}),
                Vertical(24.h),
                DoctorSpecialitySection(),
                Vertical(24.h),
                RecommendationDoctorSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
