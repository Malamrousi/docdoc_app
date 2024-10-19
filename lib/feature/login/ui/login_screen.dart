import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w , vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('Login', style: TextStyles.font18WhiteBold,),
              ]
            ),
          ),
        )
      ),
    );
  }
}  
