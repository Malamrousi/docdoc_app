// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loin_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoinRequestBody _$LoinRequestBodyFromJson(Map<String, dynamic> json) =>
    LoinRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoinRequestBodyToJson(LoinRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
