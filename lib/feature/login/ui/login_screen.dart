import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
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
=======
      appBar: AppBar(title:const Text('LoginScreen'),),
      body: const Center(child: Text('LoginScreen')),
>>>>>>> 4fb43b23e9e1eb513667c5984535fd29fea730a2
    );
  }
}
