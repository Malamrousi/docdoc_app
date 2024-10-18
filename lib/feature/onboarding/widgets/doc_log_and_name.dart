import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class DocLogAndName extends StatelessWidget {
  const DocLogAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svg/docdoc_logo.svg'),
        SizedBox(width: 10.w),
        Text('DocDoc', style: TextStyles.font24Black700),
      ],
    );
  }
}
