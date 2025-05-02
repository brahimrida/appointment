import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/text_styles.dart';

class FormTextField extends StatefulWidget {
  final bool confidential;
  final String label;
  final IconData? icon;
  final TextInputType? type;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const FormTextField({
    super.key,
    required this.label,
    this.icon,
    this.type = TextInputType.text,
    this.confidential = false,
    required this.controller,
    required this.validator,
  });

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
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

  bool _showPassword = false;

  void _togglePasswordVisibility() => setState(() => _showPassword = !_showPassword);

  @override
  Widget build(BuildContext context) {
    return widget.confidential
        ? SizedBox(
          width: 327.w,
          child: TextFormField(
            validator: widget.validator,
            controller: widget.controller,
            style: TextStyles.secondaryColorDarkExtraRegular14px,
            autocorrect: false,
            obscureText: !_showPassword,
            keyboardType: widget.type,
            decoration: InputDecoration(
              suffixIcon: InkWell(
                onTap: _togglePasswordVisibility,
                child: Icon(
                  _showPassword ? Icons.visibility : Icons.visibility_off_outlined,
                  color: _showPassword ? AppColors.primary : AppColors.secondary,
                ),
              ),

              filled: true,
              fillColor: AppColors.textFieldBackgroundColor,
              focusedErrorBorder: _outlineInputErrorBorder,
              focusedBorder: _outlineInputFocusBorder,
              errorBorder: _outlineInputErrorBorder,
              enabledBorder: _outlineInputBorder,
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
        )
        : SizedBox(
          width: 327.w,
          child: TextFormField(
            validator: widget.validator,
            controller: widget.controller,
            style: TextStyles.secondaryColorDarkExtraRegular14px,
            autocorrect: false,
            obscureText: widget.confidential,
            keyboardType: widget.type,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.textFieldBackgroundColor,
              focusedErrorBorder: _outlineInputErrorBorder,
              focusedBorder: _outlineInputFocusBorder,
              errorBorder: _outlineInputErrorBorder,
              enabledBorder: _outlineInputBorder,
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
