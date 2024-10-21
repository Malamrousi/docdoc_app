import 'package:bloc/bloc.dart';
import 'package:docdoc/feature/sign_up/data/model/sign_up_request_body.dart';
import 'package:docdoc/feature/sign_up/data/repo/sign_up_repo.dart';
import 'package:docdoc/feature/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/widgets.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  final SignUpRepo _signUpRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignUp() async {
    emit(const SignUpState.loading());

    final response = await _signUpRepo.signUp(SignUpRequestBody(
        gender: 0,
        passwordConfirmation: confirmPasswordController.text,
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text));
    response.when(success: (success) {
      emit(SignUpState.success(success));
    }, failure: (error) {
      emit(SignUpState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
