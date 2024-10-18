import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24Black700 = TextStyle(
      fontSize: 24.sp, fontWeight: FontWeight.w700, color: Colors.black);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManger.mainBlue);

  static TextStyle font14GreyRegular = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.normal, color: ColorsManger.gray,
      );
      static TextStyle font18WhiteBold = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
      color: Colors.white);
}
