import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/feature/login/logic/login/login_cubit.dart';
import 'package:docdoc/feature/login/ui/widgets/login_bloc_listener.dart';

import 'package:docdoc/feature/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widget/app_text_button.dart';
import '../data/models/loin_request_body.dart';
import 'widgets/dont_have_account_text.dart';
import 'widgets/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            Column(
              children: [
                const EmailAndPassword(),
                verticalSpacing(24),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Text('Forgot Password?',
                      style: TextStyles.font12BlueRegular),
                ),
                verticalSpacing(40),
                AppTextButton(
                    buttonText: 'Login',
                    onPressed: () {
                      validateThanDoLogin(context);
                    }),
                verticalSpacing(16),
                const TermsAndConditionsText(),
                verticalSpacing(60),
                const DontHaveAccountText(),
                const LoginBlocListener(),
              ],
            ),
          ]),
        ),
      )),
    );
  }

  void validateThanDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogin(LoinRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ));
    }
  }
}
