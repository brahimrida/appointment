import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';

class FormTextField extends StatelessWidget {
  final bool confidential;
  final String label;
  final IconData? icon;
  final TextInputType? type;
  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: AppColors.borderColor),
    borderRadius: BorderRadius.circular(15),
  );
  FormTextField({
    super.key,
    required this.label,
    this.icon,
    this.type = TextInputType.text,
    this.confidential = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      child: TextField(
        obscureText: confidential,
        keyboardType: type,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textFieldBackgroundColor,
          focusColor: AppColors.textLightColor,
          focusedBorder: _outlineInputBorder,
          enabledBorder: _outlineInputBorder,
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          hintText: label,
          hintStyle: TextStyle(
            color: AppColors.textLightColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            fontFamily: "inter",
          ),
        ),
      ),
    );
  }
}
