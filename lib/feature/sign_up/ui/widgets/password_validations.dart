import 'package:docdoc/core/helper/spacing.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PasswordValidations extends StatelessWidget {
  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacters,
      required this.hasNumber,
      required this.hasMinimLength});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinimLength;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        hasValidationsRow('At least 1 lowerCase letter', hasLowerCase),
        verticalSpacing(2),
        hasValidationsRow('At least 1 UpperCase letter', hasUpperCase),
        verticalSpacing(2),
        hasValidationsRow(
            'At least 1 Special Characters', hasSpecialCharacters),
        verticalSpacing(2),
        hasValidationsRow('At least 1 Number ', hasNumber),
        verticalSpacing(2),
        hasValidationsRow('At least 8 Characters long ', hasMinimLength),
      ],
    );
  }

  Widget hasValidationsRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManger.gray,
        ),
        horizontalSpacing(6),
        Text(
          text,
          style: TextStyles.font13DarkBlueMedium.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            fontWeight: FontWeight.w400,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManger.gray : ColorsManger.darkBlue,
          ),
        )
      ],
    );
  }
}
