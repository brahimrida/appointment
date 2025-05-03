import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class SpecialityBox extends StatelessWidget {
  final String title;
  final String image;
  const SpecialityBox({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12.h,
      children: [
        Image.asset("assets/images/$image.png", width: 56.w),
        Text(title, style: TextStyles.secondaryColorDarkRegular12px),
      ],
    );
  }
}

List<SpecialityBox> specialityList = [
  SpecialityBox(title: "General", image: "Icon-doc"),
  SpecialityBox(title: "Neurologic", image: "Icon-brain"),
  SpecialityBox(title: "Pediatric", image: "Icon-baby"),
  SpecialityBox(title: "Radiology", image: "Icon-kidney"),
];
