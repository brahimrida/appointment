import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';
import 'country_code_picker.dart';

class FormNumberTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const FormNumberTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
  });

  @override
  State<FormNumberTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormNumberTextField> {
  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: AppColors.borderColor),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder _outlineInputFocusBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: AppColors.borderFocusColor),
    borderRadius: BorderRadius.circular(15),
  );

  final OutlineInputBorder _outlineInputErrorBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: AppColors.borderErrorColor),
    borderRadius: BorderRadius.circular(15),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.w,
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        style: TextStyles.secondaryColorDarkExtraRegular14px,
        autocorrect: false,
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          prefix: CountryCodePicker(),
          filled: true,
          fillColor: AppColors.textFieldBackgroundColor,
          focusedBorder: _outlineInputFocusBorder,
          errorBorder: _outlineInputErrorBorder,
          enabledBorder: _outlineInputBorder,
          // contentPadding: EdgeInsets.only(left: 40.w,bottom: 17.h , top: 17.h),
          contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
          hintText: widget.label,
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
