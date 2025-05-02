import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/country_codes_model.dart';
import 'country_code_picker.dart';

class FormNumberTextField extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final Function(Country)? getSelectionData;
  final bool autoFillCode;

  const FormNumberTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
    this.getSelectionData,
    this.autoFillCode = true,
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

  // String? middleValidator(String? s) {
  //   String? res = widget.validator?.call(s ?? '');
  //   if (res != null) {
  //     return res;
  //   } else {
  //     return res;
  //   }
  //
  // }

  void middleSelectionData(Country country) {
    widget.getSelectionData!(country);
    if (!widget.autoFillCode) return;
    setState(() {
      widget.controller.clear();
      widget.controller.text = country.code;
    });
  }

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
          focusedErrorBorder: _outlineInputErrorBorder,
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CountryCodePicker(getSelectionData: middleSelectionData),
                Container(width: 1.w, height: 14.h, color: AppColors.textLightColor),
              ],
            ),
          ),
          filled: true,
          fillColor: AppColors.textFieldBackgroundColor,
          focusedBorder: _outlineInputFocusBorder,
          errorBorder: _outlineInputErrorBorder,
          enabledBorder: _outlineInputBorder,
          contentPadding: EdgeInsets.symmetric(vertical: 17.h),
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
