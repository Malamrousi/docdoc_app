import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/feature/login/data/models/login_response.dart';
import '../models/loin_request_body.dart';

class LoginRepo {
  ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoinRequestBody loginRequestBody) async {
    try {
      final response=await _apiService.login(loginRequestBody);  
      return ApiResult.success(response); 
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
