import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class TextStyles {
  static final TextStyle blueHeading = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
  static final TextStyle regular14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.secondary,
  );
  static final TextStyle regularLight14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.textLightColor,
  );
  static final TextStyle darkRegular12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.textDarkColor,
  );
  static final TextStyle darkBold14 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
    color: AppColors.textDarkColor,
  );
}
