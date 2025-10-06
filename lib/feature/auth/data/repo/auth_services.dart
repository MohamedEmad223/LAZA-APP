// import 'package:laza_app/core/network/api_result.dart';
// import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
// import 'package:laza_app/feature/auth/data/models/login_response_model.dart';

// class AuthServices {
//   final AuthServices authServices;

//   AuthServices({required this.authServices});

//   Future<ApiResult<LoginResponseModel>> login(LoginBodyModel body) async {
//     final response = await authServices.login(body);
//     return ApiResult.success(response);
//   }
// }
import 'package:laza_app/core/network/api_result.dart';
import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
import 'package:laza_app/feature/auth/data/models/login_response_model.dart';
import 'package:laza_app/feature/auth/data/services/auth_services.dart';

class AuthRepository {
  final AuthServices authServices;

  AuthRepository({required this.authServices});

  Future<ApiResult<LoginResponseModel>> login(LoginBodyModel body) async {
    try {
      final response = await authServices.login(loginBody: body);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.error(error);
    }
  }
}
