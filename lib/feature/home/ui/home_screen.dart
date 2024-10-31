import 'package:docdoc/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/doctor_speciality_list_view.dart';
import 'widgets/doctor_speciality_sea_all.dart';
import 'widgets/doctors_blue_container.dart';
import 'widgets/home_top_bar.dart';
import 'widgets/recommendation_doctor_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const  HomeTopBar(), 
           const DoctorsBlueContainer(),
            verticalSpacing(24),
            const DoctorSpecialitySeaAll(),
               verticalSpacing(18),
            const DoctorSpecialityListView(),
               verticalSpacing(16),
            RecommendationDoctorListView(),
            ],
          ),

        ),

        
      ),
    );
  }
}
