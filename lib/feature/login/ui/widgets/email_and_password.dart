import 'package:docdoc/core/helper/app_regx.dart';
import 'package:docdoc/feature/login/logic/login/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/widget/app_text_form_filed.dart';
import 'password_validations.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  final GlobalKey<FormState> formKey = GlobalKey();
  bool obscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinimLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();

    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerLister();
  }

  setupPasswordControllerLister() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinimLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(children: [
        AppTextFormFiled(
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid email';
            }
          },
          controller: context.read<LoginCubit>().emailController,
          hintText: 'Email',
        ),
        verticalSpacing(16),
        AppTextFormFiled(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid password';
            }
          },
          controller: context.read<LoginCubit>().passwordController,
          hintText: 'Password',
          isObscureText: obscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
              obscureText ? Icons.visibility_off_outlined : Icons.visibility,
              color: ColorsManger.mainBlue,
              size: 24.sp,
            ),
          ),
        ),
        verticalSpacing(16),
        PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinimLength: hasMinimLength)
      ]),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();

    super.dispose();
  }
}
