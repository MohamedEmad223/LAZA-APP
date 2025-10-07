import 'package:dio/dio.dart';
import 'package:laza_app/core/network/api_constants.dart';
import 'package:laza_app/feature/auth/data/models/login_body_model.dart';
import 'package:laza_app/feature/auth/data/models/login_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'login_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class LoginServices {
  factory LoginServices(Dio dio) = _LoginServices;
  @POST('auth/login')
  Future<LoginResponseModel> login({
    @Body() required LoginBodyModel loginBody
  });
}
