import 'package:appointment/features/home/ui/widgets/recommendation_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class RecommendationDoctorSection extends StatelessWidget {
  const RecommendationDoctorSection({super.key});

  void _seeAll() {
    // navigate from here
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Recommendation Doctor", style: TextStyles.appSectionHeadingSemiBold18px),
            InkWell(
              onTap: _seeAll,
              child: Text("See All", style: TextStyles.primaryColorRegular12px),
            ),
          ],
        ),

        /// recommended doctors
        ...recommendationList,
      ],
    );
  }
}
