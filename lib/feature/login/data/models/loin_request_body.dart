// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'loin_request_body.g.dart';

@JsonSerializable()
class LoinRequestBody {
  final String email;
  final String password;
  LoinRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoinRequestBodyToJson(this);
}
