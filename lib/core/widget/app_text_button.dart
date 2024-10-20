import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.bottomWidth,
      required this.buttonText,
      this.textStyle,
      required this.onPressed,
      this.bottomHeight});
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? bottomWidth;
  final double? bottomHeight;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        backgroundColor:
            WidgetStatePropertyAll(backgroundColor ?? ColorsManger.mainBlue),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(
              horizontal: horizontalPadding?.w ?? 12.w,
              vertical: verticalPadding?.h ?? 14.h),
        ),
        fixedSize: WidgetStatePropertyAll<Size>(
          Size(bottomWidth?.w ?? double.maxFinite, bottomHeight ?? 50),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
