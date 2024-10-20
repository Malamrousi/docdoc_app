import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:  Alignment.topLeft,
      children: [
      SvgPicture.asset('assets/svg/docdoc_log_low_opcity.svg'),
      Container(
        foregroundDecoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4]),
        ),
        
        child: Image.asset('assets/images/doctor_logo.png'),
      ),
      
      Positioned(
        bottom: 30.h,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            textAlign: TextAlign.center,
            'Best Doctor Appointment App',
            style: TextStyles.font32BlueBold.copyWith(height: 1.4),
          ),
        ),
      )
    ]);
  }
}
