import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormFiled extends StatelessWidget {
  const AppTextFormFiled(
      {super.key,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.hintStyle,
      this.inputTextStyle,
      this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.fillColor,
      this.controller,
      required this.validator});
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final String? hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? fillColor;
  final TextEditingController? controller;
  final Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
          filled: true,
          fillColor: fillColor ?? ColorsManger.moreLightGray,
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                borderSide:
                    const BorderSide(color: ColorsManger.mainBlue, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                borderSide: const BorderSide(
                    color: ColorsManger.lighterGray, width: 1.3),
                borderRadius: BorderRadius.circular(16),
              ),
          focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.3)),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1.3)),
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: hintStyle ?? TextStyles.font14LightGreyRegular),
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
