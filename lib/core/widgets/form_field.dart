import 'package:flutter/material.dart';

import '../theming/colors.dart';

enum FormFieldType { email, password, number, text }

class FormTextField extends StatelessWidget {
  // final TextEditingController controller;
  final String label;
  final IconData? icon;
  final FormFieldType? type;
  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: AppColors.borderColor),
    borderRadius: BorderRadius.circular(15),
  );
  FormTextField({super.key, required this.label, this.icon, this.type = FormFieldType.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusColor: AppColors.textLightColor,
        focusedBorder: _outlineInputBorder,
        enabledBorder: _outlineInputBorder,
        contentPadding: EdgeInsets.only(left: 16, top: 18, bottom: 18),
        hintText: label,
        hintStyle: TextStyle(
          color: AppColors.textLightColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          fontFamily: "inter",
        ),
      ),
    );
  }
}
