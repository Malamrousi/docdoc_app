import 'package:docdoc/feature/login/data/repo/login_repo.dart';
import 'package:docdoc/feature/login/logic/login/login_state.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/loin_request_body.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  void emitLogin() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(
        LoinRequestBody(email: emailController.text, password: passwordController.text));

    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(error: error.apiErrorModel.message ?? ''));
    });
  }
}
