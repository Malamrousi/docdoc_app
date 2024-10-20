import 'package:docdoc/core/networking/api_constants.dart';
import 'package:docdoc/feature/login/data/models/login_response.dart';
import 'package:docdoc/feature/login/data/models/loin_request_body.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoinRequestBody loginRequestBody);
}
