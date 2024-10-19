import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/widget/app_text_form_filed.dart';
import 'package:docdoc/feature/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widget/app_text_button.dart';
import 'widgets/dont_have_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            Form(
              key: formKey,
              child: Column(
                children: [
                  const AppTextFormFiled(
                    hintText: 'Email',
                  ),
                  verticalSpacing(16),
                  AppTextFormFiled(
                    hintText: 'Password',
                    isObscureText: obscureText,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Icon(
                        obscureText
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                        color: ColorsManger.mainBlue,
                        size: 24.sp,
                      ),
                    ),
                  ),
                  verticalSpacing(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text('Forgot Password?',
                        style: TextStyles.font12BlueRegular),
                  ),
                  verticalSpacing(40),
                  AppTextButton(buttonText: 'Login', onPressed: () {}),
                  verticalSpacing(16),
                  const TermsAndConditionsText(),
                  verticalSpacing(60),
               const   DontHaveAccountText()
                ],
              ),
            ),
          ]),
        ),
      )),
    );
  }
}
