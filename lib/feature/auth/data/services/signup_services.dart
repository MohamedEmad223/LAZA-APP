import 'package:dio/dio.dart';
import 'package:laza_app/core/network/api_constants.dart';
import 'package:laza_app/feature/auth/data/models/signup_body_model.dart';
import 'package:laza_app/feature/auth/data/models/signup_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'signup_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class SignupServices {
  factory SignupServices(Dio dio) = _SignupServices;
  
  @POST('auth/register')
  Future<SignupResponseModel> signUp({
    @Body() required SignupBodyModel signUpBodyModel,
  });
}
