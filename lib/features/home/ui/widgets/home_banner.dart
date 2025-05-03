import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

class HomeBanner extends StatelessWidget {
  final VoidCallback onButtonClicked;
  const HomeBanner({super.key, required this.onButtonClicked});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/Background-home.png", height: 167.h),
                Positioned(
                  left: 17.w,
                  child: Column(
                    spacing: 15.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book and\nschedule with\nnearest doctor",
                        style: TextStyles.primaryColorBold24px.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: onButtonClicked,
                        child: Text(
                          "Find nearby",
                          style: TextStyles.secondaryColorRegular12px.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 17.w,
            bottom: 2.h,
            child: Image.asset("assets/images/nurse-home.png", height: 197.h),
          ),
        ],
      ),
    );
  }
}
