// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final int gender;
  SignUpRequestBody({
    required this.gender,
    required this.passwordConfirmation,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

 

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
