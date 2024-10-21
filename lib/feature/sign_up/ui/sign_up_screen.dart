import 'package:docdoc/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:docdoc/feature/sign_up/ui/widgets/sign_up_form.dart';
import 'package:docdoc/feature/sign_up/ui/widgets/have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widget/app_text_button.dart';
import '../../login/ui/widgets/terms_and_conditions_text.dart';
import 'widgets/sign_up_bloc_listner.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Welcome Back',
              style: TextStyles.font24BlueBold,
            ),
            verticalSpacing(8),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GreyRegular,
            ),
            verticalSpacing(36),
            Column(
              children: [
                const SignUpForm(),
                verticalSpacing(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text('Forgot Password?',
                      style: TextStyles.font12BlueRegular),
                ),
                verticalSpacing(40),
                AppTextButton(
                    buttonText: 'Create Account',
                    onPressed: () {
                      validateThanDoSinUp(context);
                    }),
                verticalSpacing(16),
                const TermsAndConditionsText(),
                verticalSpacing(60),
                const AlreadyHaveAccountText(),
                const SignUpBlocListener(),
              ],
            ),
          ]),
        ),
      )),
    );
   
  }
  
  void validateThanDoSinUp(BuildContext context) {
    if(context.read<SignUpCubit>().formKey.currentState!.validate()) {
       context.read<SignUpCubit>().emitSignUp();
    }
  }

  
}
