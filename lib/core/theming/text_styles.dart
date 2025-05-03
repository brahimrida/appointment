import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class TextStyles {
  static final TextStyle primaryColorBold24px = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
  static final TextStyle secondaryColorRegular14px = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.secondary,
  );
  static final TextStyle regularLight14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColors.textLightColor,
  );
  static final TextStyle secondaryColorDarkRegular12px = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.textDarkColor,
  );

  static final TextStyle secondaryColorDarkExtraRegular14px = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.textDarkColor,
  );
  static final TextStyle secondaryColorExtraRegular12px = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    color: AppColors.secondary,
  );
  static final TextStyle secondaryColorRegular12px = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.secondary,
  );
  static final TextStyle primaryColorRegular12px = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.primary,
  );
  static final TextStyle secondaryColorDarkBold14px = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14.sp,
    color: AppColors.textDarkColor,
  );

  static final TextStyle appSectionHeadingSemiBold18px = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18.sp,
    color: AppColors.textDarkColor,
  );
}
