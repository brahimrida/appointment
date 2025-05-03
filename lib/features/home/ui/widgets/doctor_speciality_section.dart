import 'package:appointment/features/home/ui/widgets/speciality_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class DoctorSpecialitySection extends StatelessWidget {
  const DoctorSpecialitySection({super.key});

  void _seeAll() {
    // navigate from here
    print("navigate");
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
            Text("Doctor Speciality", style: TextStyles.appSectionHeadingSemiBold18px),
            InkWell(
              onTap: _seeAll,
              child: Text("See All", style: TextStyles.primaryColorRegular12px),
            ),
          ],
        ),

        ///
        ///
        ///
        ///
        Row(
          spacing: 24.w,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [...specialityList],
        ),
      ],
    );
  }
}
