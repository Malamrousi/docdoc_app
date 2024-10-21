import 'package:docdoc/core/helper/extension.dart';
import 'package:docdoc/core/routing/route.dart';
import 'package:docdoc/core/theming/colors.dart';
import 'package:docdoc/core/theming/styles.dart';
import 'package:docdoc/feature/login/logic/login/login_cubit.dart';
import 'package:docdoc/feature/login/logic/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: ColorsManger.mainBlue,
                      ),
                    ));
          },
          success: (data) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          failure: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font14DarkBlueMedium,
        ),
        actions: [
          TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text(
                'Go iT',
                style: TextStyles.font13BlueSemiBold,
              ))
        ],
      ),
    );
  }
}
