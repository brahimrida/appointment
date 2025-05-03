import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';

List<RecommendationBox> recommendationList = [
  RecommendationBox(
    fullName: "Randy Wigham",
    speciality: "General",
    hospital: "RSUD Gatot Subroto",
    rating: "4.8",
    reviews: "4.279",
    image: "home-doctor1",
  ),
  RecommendationBox(
    fullName: "Jack Sullivan",
    speciality: "General",
    hospital: "RSUD Gatot Subroto",
    rating: "4.8",
    reviews: "4.279",
    image: "home-doctor2",
  ),
];

class RecommendationBox extends StatelessWidget {
  final String fullName;
  final String speciality;
  final String hospital;
  final String rating;
  final String reviews;
  final String image;
  const RecommendationBox({
    super.key,
    required this.fullName,
    required this.speciality,
    required this.hospital,
    required this.rating,
    required this.reviews,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 24.w,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset("assets/images/$image.png", width: 110.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8.h,
          children: [
            // name
            Text(
              "Dr. $fullName",
              style: TextStyles.secondaryColorDarkBold14px.copyWith(fontSize: 16.sp),
            ),
            // speciality and hospital
            Row(
              spacing: 8.w,
              children: [
                // speciality
                Text(speciality, style: TextStyles.secondaryColorExtraRegular12px),
                // divider
                Container(height: 11.h, width: 1.w, color: AppColors.secondary),
                // hospital
                Text(hospital, style: TextStyles.secondaryColorExtraRegular12px),
              ],
            ),

            // rating
            Row(
              spacing: 4.w,
              children: [
                SvgPicture.asset("assets/images/svgs/magic-star.svg", width: 16.w),
                Text(rating, style: TextStyles.secondaryColorExtraRegular12px),
                Text("($reviews reviews)", style: TextStyles.secondaryColorExtraRegular12px),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
