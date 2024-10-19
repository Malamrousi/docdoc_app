import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black);

  static TextStyle font32BlueBold = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManger.mainBlue);
  static TextStyle font24BlueBold = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorsManger.mainBlue);

  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.gray,
  );
    static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.gray,
  );
  static TextStyle font14LightGreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.lightGray,
  );
    static TextStyle font12BlueRegular = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManger.mainBlue,
  );
  static TextStyle font18WhiteBold = TextStyle(
      fontSize: 18.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.white);

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManger.darkBlue,
  );
   static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManger.darkBlue,
  );

    static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManger.lightGray,
  );
      static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.semiBold,
    color: ColorsManger.mainBlue,
  );
}
