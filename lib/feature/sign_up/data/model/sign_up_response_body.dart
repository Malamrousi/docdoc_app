// To parse this JSON data, do
//
//     final signUpResponseBody = signUpResponseBodyFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_body.g.dart';


@JsonSerializable()
class SignUpResponseBody {
    @JsonKey(name: "message")
    String? message;
    @JsonKey(name: "data")
    UserData? data;
    @JsonKey(name: "status")
    bool? status;
    @JsonKey(name: "code")
    int? code;

    SignUpResponseBody({
        this.message,
        this.data,
        this.status,
        this.code,
    });

    factory SignUpResponseBody.fromJson(Map<String, dynamic> json) => _$SignUpResponseBodyFromJson(json);

    Map<String, dynamic> toJson() => _$SignUpResponseBodyToJson(this);
}

@JsonSerializable()
class UserData {
    @JsonKey(name: "name")
    List<String>? name;
    @JsonKey(name: "email")
    List<String>? email;
    @JsonKey(name: "phone")
    List<String>? phone;
    @JsonKey(name: "gender")
    List<String>? gender;
    @JsonKey(name: "password")
    List<String>? password;

    UserData({
        this.name,
        this.email,
        this.phone,
        this.gender,
        this.password,
    });

    factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

    Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
