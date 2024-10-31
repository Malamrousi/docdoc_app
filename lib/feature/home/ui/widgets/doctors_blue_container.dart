import 'package:docdoc/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: const DecorationImage(
                
                  image: AssetImage(
                    'assets/images/banner_background_image_blue_color.png',
                  ),
                  fit: BoxFit.fill),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    textAlign: TextAlign.start,
                    'Book and\nschedule with\nnearest doctor',
                    style: TextStyles.font18WhiteMedium),
                verticalSpacing(12),
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(48),
                        ),
                      ),
                      child: Text('Find Nearby',
                          style: TextStyles.font12BlueRegular)),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            top: 0,
            child: Image.asset('assets/images/doctor_home_banner.png',
            height: 200.h,
            ),)
        ],
      ),
    );
  }
}
