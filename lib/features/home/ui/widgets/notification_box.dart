import 'package:appointment/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationBox extends StatelessWidget {
  final bool gotNotification;
  const NotificationBox({super.key, this.gotNotification = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 48.w,
      height: 48.w,
      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.lightGray),
      child: SizedBox(
        height: 24.w,
        width: 24.w,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset("assets/images/svgs/Alert.svg", width: 24.w),
            if (gotNotification)
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset("assets/images/svgs/notif.svg", width: 8.w),
              ),
          ],
        ),
      ),
    );
  }
}
