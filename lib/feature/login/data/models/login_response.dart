// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  UserData? data;
  @JsonKey(name: "status")
  bool? status;
  @JsonKey(name: "code")
  int? code;

  LoginResponse({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: "token")
  String? token;
  @JsonKey(name: "username")
  String? userName;

  UserData({
    this.token,
    this.userName,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
