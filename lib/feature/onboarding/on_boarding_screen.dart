import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/feature/onboarding/widgets/doc_log_and_name.dart';
import 'package:docdoc/feature/onboarding/widgets/doctor_image_and_text.dart';
import 'package:docdoc/feature/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 30.h,
            bottom: 30.h,
          ),
          child: Column(
            children: [
              const DocLogAndName(),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font14GreyRegular,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const GetStartedButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
