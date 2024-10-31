import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/styles.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsetsDirectional.only(
              start: index == 0 ? 0.w : 24.w,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManger.moreLighterGray,
                  child: SvgPicture.asset(
                    'assets/svg/general_image_doctor_speciality.svg',
                    height: 40.h,
                    width: 40.w,
                  ),
                ),
                verticalSpacing(5),
                Text(
                  'General',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
