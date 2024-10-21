// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:json_serializable/json_serializable.dart';

// part 'api_error_model.g.dart';

// @JsonSerializable()
// class ApiErrorModel {
// final String? message;
// final int? code;
//   ApiErrorModel({
//     required this.message,
//     this.code,
//   });

//   factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
//       _$ApiErrorModelFromJson(json);
//   Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
// }

import 'package:json_annotation/json_annotation.dart';

part  'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
 final String? message;
final int? code;
  ApiErrorModel({
    this.message,
    this.code,
  });

  /// factory.
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) => _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
