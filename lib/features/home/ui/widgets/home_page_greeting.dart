import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class HomePageGreeting extends StatelessWidget {
  const HomePageGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hi, Brahim!", style: TextStyles.secondaryColorDarkBold14px.copyWith(fontSize: 18.sp)),
        Text("How Are you Today?", style: TextStyles.secondaryColorRegular12px),
      ],
    );
  }
}
