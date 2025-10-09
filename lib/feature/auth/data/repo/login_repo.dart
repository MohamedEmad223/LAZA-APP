import 'package:laza_app/config/cache/cache_helper.dart';
import 'package:laza_app/core/network/api_result.dart';
import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
import 'package:laza_app/feature/auth/data/models/login_response_model.dart';
import 'package:laza_app/feature/auth/data/services/login_services.dart';

class LoginRepository {
  final LoginServices loginServices;

  LoginRepository({required this.loginServices});

  Future<ApiResult<LoginResponseModel>> login(LoginBodyModel body) async {
    try {
      final response = await loginServices.login(loginBody: body);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error);
    }
  }
}
