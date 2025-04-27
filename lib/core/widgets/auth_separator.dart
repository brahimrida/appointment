import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/text_styles.dart';

class AuthSeparator extends StatelessWidget {
  const AuthSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(height: 1.h, color: AppColors.textLightColor)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Text("Or sign in with", style: TextStyles.regularLight14),
        ),
        Expanded(child: Container(height: 1, color: AppColors.textLightColor)),
      ],
    );
  }
}
