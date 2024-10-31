import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class DoctorSpecialitySeaAll extends StatelessWidget {
  const DoctorSpecialitySeaAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font18DarkBlueSemiBold,
        ),
       const  Spacer(),
        Text(
          'See All',
          style: TextStyles.font12BlueRegular,
        ),
      ],
    );
  }
}
